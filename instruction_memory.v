module instruction_memory(
                    address,
                    data
  );
  input [31:0] address;
  output [31:0] data;
  //reg [31:0] data;
  integer i;
  reg [31:0] instruction_memory[255:0];

  initial
    // begin
    // wire data_file;
    // data_file = $fopen("mips.dat");
    // if (data_file == NULL) begin
    //   $display("ERROR: data file not found");
    //   $finish;
    // end
    // scan_file = $fscanf(data_file, "%d\n",captured_data);
    // if (!feof(data_file)) begin
    //   generate
    //     genvar i;
    //     for (i=0; i<256; i++) begin
    begin
    $readmemh("program.hex", instruction_memory,255,0);
    for (i=0;i<40; i= i+1)
      $display("%d:%h",i,instruction_memory[i]);
    end
    assign data = instruction_memory[address[9:2]];
  endmodule
