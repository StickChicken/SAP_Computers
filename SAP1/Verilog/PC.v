module counter (
  input wire clk,      // clock input
  input wire reset,    // asynchronous reset input
  input wire set_en,   // set enable input
  input wire [3:0] set_val,   // set value input
  output reg [3:0] count   // output count
);

  always @(posedge clk) begin
    if (reset) begin
      count <= 4'h0;
    end else if (set_en) begin
      count <= set_val;
    end else begin
      count <= count + 1;
    end
  end

endmodule
