module timer(
   input start, clk, rst,
   output reg reset,
   output reg dis);

   reg state;
   reg [8:0] CNT;
   
   parameter IDLE = 1'b0, COUNT = 1'b1, LIMIT = 8'd220;
   
   wire timeup;

   assign timeup = (CNT == LIMIT);

   // Sequential part
   always @(posedge clk or negedge rst) begin
     if (!rst) begin
       state <= IDLE;
       reset <= 1'b0;
       CNT <= 0;
     end else begin
       case(state)
         IDLE:
           begin
             CNT <= 0;
	     reset <= 1'b0;
             if (start)begin
	       dis <= 1'b1;
               state <= COUNT; end
             else begin
	       dis <= 1'b0;
               state <= IDLE;end
           end
         COUNT:
           begin
             CNT <= CNT + 1;
             if (timeup)begin
	       dis <= 1'b0;
	       reset <= 1'b1;
               state <= IDLE;end
             else begin
	       dis <= 1'b1;	
               state <= COUNT; end
           end
         default:
           begin
             CNT <= CNT;
             state <= IDLE;
           end
       endcase // case (state)
     end
   end

endmodule // timerTest
