`include "memory.v"
module tb;
     parameter WIDTH = 8;
     parameter DEPTH = 32;
     parameter ADDR_WIDTH = $clog2(DEPTH);
     reg clk,rst,valid,wr_rd;
     reg [ADDR_WIDTH-1:0]addr;
     reg [WIDTH-1:0]wdata;
     wire [WIDTH-1:0]rdata;
     wire ready;
     integer i, j,k;
     reg [15*8-1:0]test_name;

   memory dut (
      .clk(clk), .rst(rst), .valid(valid),
      .ready(ready), .addr(addr), .wdata(wdata),
      .wr_rd(wr_rd), .rdata(rdata));

   always #5 clk = ~clk;
   initial begin
     if($value$plusargs("test_name=%s",test_name));
   end
   initial begin
   		clk=0;
  		rst = 1;
		addr = 0;
		repeat(2)@(posedge clk);
		rst = 0;
		case(test_name)
		"1wr_1rd":begin
		    write(5,1);
		    read(5,1);
			end
		"5wr_5rd":begin
		    write(1,5);
			read(1,5);
		    end
		"fd_wr_fd_rd":begin
		    write(0,DEPTH);
			read(0,DEPTH);
		    end
		"bd_wr_fd_rd":begin
		    bd_write();
			read(0,DEPTH);
		    end
		"fd_wr_bd_rd":begin
		    write(0,DEPTH);
			bd_read();
		    end
		"bd_wr_bd_rd":begin
		    bd_write();
			bd_read();
		    end
		"1ST_QUATOR":begin
		    write(0,DEPTH/4);
			read(0,DEPTH/4);
		    end
		"2ND_QUATOR":begin
		    write(DEPTH/4,DEPTH/4);
			read(DEPTH/4,DEPTH/4);
		    end
		"3RD_QUATOR":begin
		    write(DEPTH/2,DEPTH/4);
			read(DEPTH/2,DEPTH/4);
		    end
		"4RT_QUATOR":begin
		    write((3*DEPTH/4),DEPTH/4);
			read((3*DEPTH/4),DEPTH/4);
		    end
		"consecutive":begin
		    consecutive(1,5);
		    end
		default:$display("nothing happen");
		endcase
		#100;
		$finish;
     end
//write
  task write(input [ADDR_WIDTH-1:0]starting_location,input [ADDR_WIDTH:0]number_of_location);begin
      for(i=starting_location;i<starting_location+number_of_location;i=i+1)begin
	  @(posedge clk);
                wr_rd = 1;
		addr = i;
		wdata = $random;
		valid = 1;
		wait(ready==1);
	  end
  end
  endtask
//read 
  task read(input [ADDR_WIDTH-1:0]starting_location,input [ADDR_WIDTH:0]number_of_location);begin
     for(j=starting_location;j<starting_location+number_of_location;j=j+1)begin
	    @(posedge clk);
        wr_rd = 0;
		addr = j;
        valid = 1;
		wait(ready==1);
	end
  end
  endtask 
  task bd_write();
     $readmemh("input.hex",dut.mem);
  endtask
  task bd_read();
     $writememh("output.hex",dut.mem);
  endtask
  task consecutive(input [ADDR_WIDTH-1:0]start_loc,input [ADDR_WIDTH:0]number_of_loc);begin
   for(k=start_loc;k <start_loc+number_of_loc;k=k+1)begin
      @(posedge clk);
       wr_rd = 1;
       addr = k;
       wdata=$random;
       valid = 1;
       wait(ready==1);
	   @(posedge clk)
       wr_rd = 0;
   	   addr= k;
	   valid = 1;
	   wait(ready==1);
	end
   end
  endtask
endmodule

