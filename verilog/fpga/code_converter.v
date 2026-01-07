module code_converter_4bit (
    input [3:0] d_in,
    input [1:0] mode,
    output [3:0] d_out
);
    integer i;
    reg [4:0] temp;   //creating a temporary variable only for xs3 calculations for handling carry and borrows.
    reg [3:0] binary, gray;

    always @(*) begin
        case (mode)
            // 00: Binary -> Gray
            2'b00: begin
                gray[3] = d_in[3];
                for (i = 2; i >= 0; i = i - 1)
                    gray[i] = d_in[i+1] ^ d_in[i];
                d_out = gray;
            end

            // 01: Gray -> Binary
            2'b01: begin
                binary[3] = d_in[3];
                for (i = 2; i >= 0; i = i - 1)
                    binary[i] = binary[i+1] ^ d_in[i];
                d_out = binary;
            end

            // 10: Binary -> XS3 (Excess-3)
            2'b10: begin
                temp = d_in + 4'd3;   // Add 3 to binary
                for (i = 0; i < 4; i = i + 1)
                    d_out[i] = temp[i];
            end

            // 11: XS3 -> Binary
            2'b11: begin
                temp = d_in - 4'd3;   // Subtract 3 from XS3
                for (i = 0; i < 4; i = i + 1)
                    d_out[i] = temp[i];
            end

            default: d_out = 4'b0000;
        endcase
    end
endmodule
