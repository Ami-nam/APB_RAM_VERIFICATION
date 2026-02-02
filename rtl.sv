// Code your design here
module apb_ram (
  input  logic        PCLK,
  input  logic        PRESETn,
  input  logic        PSEL,
  input  logic        PENABLE,
  input  logic        PWRITE,
  input  logic [31:0] PADDR,
  input  logic [31:0] PWDATA,
  output logic [31:0] PRDATA,
  output logic        PREADY
);

  logic [31:0] mem [0:255];

  assign PREADY = 1'b1;

  always_ff @(posedge PCLK or negedge PRESETn) begin
    if (!PRESETn) begin
      PRDATA <= 0;
    end else if (PSEL && PENABLE) begin
      if (PWRITE)
        mem[PADDR[7:0]] <= PWDATA;
      else
        PRDATA <= mem[PADDR[7:0]];
    end
  end

endmodule
