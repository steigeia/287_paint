module projidea1(master_clk, KB_clk, data, DAC_clk, VGA_R, VGA_G, VGA_B, VGA_hSync, VGA_vSync, blank_n, sram_addr, sram_data, sram_ce, sram_oe, sram_we,sram_lb, sram_ub,,rst);
	input master_clk, KB_clk, data, rst; //50MHz master_clk
	output reg [7:0]VGA_R, VGA_G, VGA_B;  //Red, Green, Blue VGA signals
	output VGA_hSync, VGA_vSync, DAC_clk, blank_n; //Horizontal and Vertical sync signals
	output wire sram_ce, sram_oe, sram_lb, sram_ub; //sram output signals
	assign sram_ce=0; //these sram signals should always be 0
	assign sram_ub=0;
	assign sram_lb=0;
	assign sram_oe=0;
   reg write_wait;
	output reg sram_we; //sram write_wait enable 0 write_wait 1 for reading
	inout wire [2:0]sram_data;
	output reg [19:0] sram_addr;
	wire [9:0] xCount; //x pixel of vga
	wire [9:0] yCount; //y pixel og vga
	wire displayArea; //not currently used
	wire dirx,diry;
	reg [4:0] direction;
	wire datafetched;
	wire [7:0] rxdata;
	reg [7:0] previous_keycode;
	reg [7:0] keycode;
	wire VGA_clk; //25 MHz
	reg [7:0]writeR;
	reg [7:0]writeG;
	reg [7:0]writeB;
	reg [7:0]Rout,Gout,Bout;
	reg [7:0]backgroundR,backgroundG,backgroundB;
	reg [31:0] counter;
	reg [9:0]writex, writey, prev_writex, prev_writey; //x and y of the cursor and previous x and y for when reseting screen	
	reg resetram; //flag for if reseting ram
	reg [5:0]blink;
	
	
	
	clk_reduce reduce1(master_clk, VGA_clk, rst); //Reduces 50MHz clock to 25MHz
	VGA_gen gen1(VGA_clk, rst, xCount, yCount, displayArea, VGA_hSync, VGA_vSync, blank_n);//Generates xCount, yCount and horizontal/vertical sync signals	
	keyboard kbIn(master_clk, rst, data, KB_clk, rxdata, datafetched); //rxdata is ps2 keycodes and datafetched is pulse for when a new code has been recieved
	assign DAC_clk = VGA_clk;
	
	
	
	
	always @(posedge master_clk or negedge rst)//logic for what to do with rxdata based off of previous keycode and datafetched 
	begin
	  if(rst == 0)
	  begin
		 keycode <= 0;
		 previous_keycode <= 0;
		 writeR <= 1;
		 writeG <= 1;
		 writeB <= 1;
	  end
	  else if(datafetched==1)
	  begin
		 if(previous_keycode != 8'hF0)
		 begin 
			keycode<=rxdata;
		 end
		 else //change colors on key up of r, g, and b
		 begin
			case(rxdata)
			8'h2d://r
				writeR<=!writeR;
			8'h34://g
				writeG<=!writeG;
			8'h32://b
				writeB<=!writeB;
			endcase
		 end
		 previous_keycode <=rxdata;
	  end
	end  
	
	//logic for what direction to moved based off of keycode
	always@(*)
	begin 
		case(keycode)
		8'h1D://w
		begin
			direction = 1;
		end
		8'h1C://a
		begin
			direction = 2;
		end
		8'h1B://s
		begin
			direction = 3;
		end
		8'h23://d
		begin
			direction = 4;
		end
		8'h15://q
		begin
			direction = 6;
		end
		8'h24://e
		begin
			direction = 7;
		end
		8'h1A://z
		begin
			direction = 8;
		end
		8'h21://c
		begin
			direction = 9;
		end
		8'h29://space
		begin
			direction = 5;
		end
		default:
			direction = 0;
		endcase
	end	
	
	
	always@(posedge VGA_clk or negedge rst)
	begin
		if(rst == 0)
		begin
			writex <= 0;
			blink <= 0;
			writey <= 0;
			write_wait <= 0;
			prev_writex <= 320;
			prev_writey <= 240;
			counter <= 0;
			resetram <= 1;
			backgroundR = 0;
			backgroundG = 0;
			backgroundB = 0;
		end
		else if(resetram==1) //if reseting reset sram by going through and rewrite_wait all of the addresses to black
		begin	
			if(writex<640)
				writex<=writex+1;
			else
				if(writey<480)
				begin
					writey<=writey+1;
					writex <=0;
				end
				else
				begin
					resetram<=0;
					writex <= prev_writex;
					writey <= prev_writey;
				end
		end
		else
		begin
			if(write_wait == 1) //if just written a new pixel wait 2000 clock cycles before doing so again
			begin
				if(counter >= 2000)
					write_wait <=0;
				else
					counter <= counter+1;
			end
			else if(writex == xCount && writey == yCount && direction != 0)
			begin
				if(direction == 1 && writey>0) //if we are at the cursor pixel up date the cursor position if necessary and start counter
				begin
					writey <= writey - 1;
				end
				else if(direction == 2 && writex>1)
				begin
					writex <= writex - 1;
				end
				else if(direction == 3 && writey<479)
				begin
					writey <= writey + 1;
				end
				else if(direction == 4 && writex<638)
				begin
					writex <= writex + 1;
				end
				else if(direction == 6 && writex>1 && writey>0)
				begin
					writex <= writex - 1;
					writey <= writey - 1;
				end
				else if(direction == 7 && writex<638 && writey>0)
				begin
					writex <= writex + 1;
					writey <= writey - 1;
				end
				else if(direction == 8 && writex>1 && writey<479)
				begin
					writex <= writex - 1;
					writey <= writey + 1;
				end
				else if(direction == 9 && writex<638 && writey<479)
				begin
					writex <= writex + 1;
					writey <= writey + 1;
				end
				else if(direction == 5) //if space is pressed set prev_writingx/y to current cursor position and set resetram flag to 1
				begin
					prev_writex<=writex;
					prev_writey<=writey;
					writex<=0;
					writey<=0;
					backgroundR = writeR;
					backgroundG = writeG;
					backgroundB = writeB;
					resetram <= 1;
				end
				write_wait<=1;
				counter <= 0;
				blink <= 0;
			end
			else if(writex == xCount && writey == yCount)
			begin
				blink <= blink + 1;
			end
		end
	end
		
	assign sram_data[0] = sram_we==1 ? 'bz : Rout;
	assign sram_data[1] = sram_we==1 ? 'bz : Gout;
	assign sram_data[2] = sram_we==1 ? 'bz : Bout;
	
	always@(*)
	begin
		if(resetram == 1)
		begin
			sram_addr = {writex,writey};
			sram_we = 0;
			Rout=backgroundR;
			Gout=backgroundG;
			Bout=backgroundB;
			VGA_R = {8{sram_data[0]}};
			VGA_G = {8{sram_data[1]}};
			VGA_B = {8{sram_data[2]}};
		end
		else
		begin
			if((writex == xCount && writey == yCount))
			begin
				sram_addr = {writex,writey};
				sram_we = 0;
				if(blink > 10 || direction != 0)
				begin
					Rout=writeR;
					Gout=writeG;
					Bout=writeB;
					VGA_R = {8{sram_data[0]}};
					VGA_G = {8{sram_data[1]}};
					VGA_B = {8{sram_data[2]}};
				end
				else
					if(writeR==backgroundR&&writeG==backgroundG&&writeB==backgroundB)
					begin
						Rout=!backgroundR;
						Gout=!backgroundG;
						Bout=!backgroundB;
						VGA_R = 127;
						VGA_G = 127;
						VGA_B = 127;
					end
					else
					begin
						Rout=backgroundR;
						Gout=backgroundG;
						Bout=backgroundB;
						VGA_R = {8{sram_data[0]}};
						VGA_G = {8{sram_data[1]}};
						VGA_B = {8{sram_data[2]}};
					end
			end
			else
			begin
				sram_addr = {xCount,yCount};
				sram_we = 1;
				Rout=writeR;
				Gout=writeG;
				Bout=writeB;
				VGA_R = {8{sram_data[0]}};
				VGA_G = {8{sram_data[1]}};
				VGA_B = {8{sram_data[2]}};
			end
		end
	end
	

endmodule
	
///////////////////////////////////////////////////////////////////////////////	

//code from Funkheld on http://www.alteraforum.com/forum/showthread.php?t=46549
//modified by Isaac Steiger and Melissa Bruno
module keyboard (
  input clk,
  input rst,
  input PS2_DATA,
  input PS2_CLOCK,
  output reg [7:0] rxdata,
  output reg datafetched
); 

parameter idle    = 2'b01;
parameter receive = 2'b10;
parameter ready   = 2'b11;

reg [1:0]  state=idle;
reg [15:0] rxtimeout;
reg [10:0] rxregister;
reg [1:0]  datasr;
reg [1:0]  clksr;



reg dataready;
  
always @(posedge clk or negedge rst) 
if(rst == 0)
begin
	state<=idle;
	rxtimeout<=16'b0000000000000000;
	rxregister<=11'b11111111111;
	datasr<=2'b11;
	clksr<=2'b11;
	datafetched <= 0;
	rxdata <= 0;
end
else
begin
  rxtimeout<=rxtimeout+1;
  datasr <= {datasr[0],PS2_DATA};
  clksr  <= {clksr[0],PS2_CLOCK};


  if(clksr==2'b10)
    rxregister<= {datasr[1],rxregister[10:1]};


  case (state) 
    idle: 
    begin
      rxregister <=11'b11111111111;
      dataready  <=0;
		datafetched <=0;
      rxtimeout  <=16'b0000000000000000;
      if(datasr[1]==0 && clksr[1]==1)
      begin
        state<=receive;
      end   
    end
    
    receive:
    begin
      if(rxtimeout==50000)
        state<=idle;
      else if(rxregister[0]==0)
      begin
        dataready<=1;
        rxdata<=rxregister[8:1];
        state<=ready;
        datafetched<=1;
      end
    end
    
    ready: 
    begin
      if(datafetched==1)
      begin
        state     <=idle;
        dataready <=0;
		  datafetched <=0;
      end  
    end  
  endcase
end 
endmodule

//////////////////////////////////////////////////////////////////////////////////////////////////////

//code from ECE2220_2015 http://www.instructables.com/id/Snake-on-an-FPGA-Verilog/
//modified Issac and Melissa Bruno
module clk_reduce(master_clk, VGA_clk, rst);

	input master_clk, rst; //50MHz clock
	output reg VGA_clk; //25MHz clock
	reg q;

	always@(posedge master_clk or negedge rst)
	begin
		if(rst == 0)
		begin
			q<=0;
			VGA_clk <= 0;
		end
		else
		begin
			q <= ~q; 
			VGA_clk <= q;
		end
	end
endmodule


//////////////////////////////////////////////////////////////////////////////////////////////////////

//code from ECE2220_2015 http://www.instructables.com/id/Snake-on-an-FPGA-Verilog/
//modified Issac and Melissa Bruno
module VGA_gen(VGA_clk, rst, xCount, yCount, displayArea, VGA_hSync, VGA_vSync, blank_n);

	input VGA_clk, rst;
	output reg [9:0]xCount, yCount; 
	output reg displayArea;  
	output VGA_hSync, VGA_vSync, blank_n;

	reg p_hSync, p_vSync; 
	
	integer porchHF = 640; //start of horizntal front porch
	integer syncH = 655;//start of horizontal sync
	integer porchHB = 747; //start of horizontal back porch
	integer maxH = 793; //total length of line.

	integer porchVF = 480; //start of vertical front porch 
	integer syncV = 490; //start of vertical sync
	integer porchVB = 492; //start of vertical back porch
	integer maxV = 525; //total rows. 

	always@(posedge VGA_clk or negedge rst)
	begin
		if(rst == 0)
		begin
			xCount<=0;
			yCount<=0;
			displayArea <= 0;
			p_hSync <= 0;
			p_vSync <= 0;
		end
		else if(xCount == maxH)
			begin
				xCount <= 0;
				if(yCount == maxV)
					yCount <= 0;
				else
					yCount <= yCount + 1;
			end
		else
			xCount <= xCount + 1;
		displayArea <= ((xCount < porchHF) && (yCount < porchVF)); 
		p_hSync <= ((xCount >= syncH) && (xCount < porchHB)); 
		p_vSync <= ((yCount >= syncV) && (yCount < porchVB)); 
	end
 
	assign VGA_vSync = ~p_vSync; 
	assign VGA_hSync = ~p_hSync;
	assign blank_n = displayArea;
endmodule		