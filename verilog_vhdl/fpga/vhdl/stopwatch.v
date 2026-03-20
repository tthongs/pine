module Stopwatch(
    input clk,          // System clock (assumed 100MHz)
    input clr,          // Active-low Reset
    input PA_PL,        // Play/Pause (1 = Play, 0 = Pause)
    output khz,         // 1kHz output for multiplexing
    output hz,          // 100Hz output (centiseconds)
    output [6:0] segment,
    output [3:0] anode
);

    reg qkhz = 0;
    reg qhz = 0;
    reg [6:0] r_segment;
    reg [3:0] r_anode;
    
    assign segment = r_segment;
    assign anode = r_anode;
    assign khz = qkhz;
    assign hz = qhz;

    // 1kHz clock divider (for 7-segment multiplexing)
    // 100MHz / (2 * 50,000) = 1kHz
    reg [15:0] counter = 0;
    always @(posedge clk) begin
        if (clr == 1'b0) begin
            counter <= 16'd0;
            qkhz <= 1'b0;
        end else begin
            if (counter == 16'd49999) begin
                counter <= 16'd0;
                qkhz <= ~qkhz;
            end else begin
                counter <= counter + 1;
            end
        end
    end

    // 100Hz clock divider (for centiseconds timing)
    // 100MHz / (2 * 500,000) = 100Hz
    reg [18:0] count = 0;
    always @(posedge clk) begin
        if (clr == 1'b0) begin
            count <= 19'd0;
            qhz <= 1'b0;
        end else begin
            if (count == 19'd499999) begin
                count <= 19'd0;
                qhz <= ~qhz;
            end else begin
                count <= count + 1;
            end
        end
    end

    // 0 to 9999 counter with Pause/Play
    reg [13:0] data = 0;
    always @(posedge qhz or negedge clr) begin
        if (clr == 1'b0) begin
            data <= 14'd0;
        end else if (PA_PL == 1'b1) begin // Only increment if playing
            if (data == 14'd9999) begin   // Fixed: Rollover check nested inside Play
                data <= 14'd0;
            end else begin
                data <= data + 1;
            end
        end
        // If PA_PL == 0, data remains unchanged (implicit latching in sequential logic)
    end
    
    // Multiplexing driver (selects which digit to display)
    reg [1:0] driver = 0;
    always @(posedge qkhz or negedge clr) begin
        if (clr == 1'b0) begin
            driver <= 2'b00;
        end else begin
            driver <= driver + 1;
        end
    end

    // Anode and segment decoding logic
    reg [3:0] print;
    always @(*) begin
        case(driver)
            2'b00: begin
                r_anode = 4'b1110;
                print = data % 10;
            end
            2'b01: begin
                r_anode = 4'b1101;
                print = (data / 10) % 10;
            end
            2'b10: begin
                r_anode = 4'b1011;
                print = (data / 100) % 10;
            end
            2'b11: begin
                r_anode = 4'b0111;
                print = (data / 1000) % 10;
            end
            default: begin
                r_anode = 4'b1111;
                print = 4'd0;
            end
        endcase

        case(print)
            4'd0: r_segment = 7'b1000000;
            4'd1: r_segment = 7'b1111001;
            4'd2: r_segment = 7'b0100100;
            4'd3: r_segment = 7'b0110000;
            4'd4: r_segment = 7'b0011001;
            4'd5: r_segment = 7'b0010010;
            4'd6: r_segment = 7'b0000010;
            4'd7: r_segment = 7'b1111000;
            4'd8: r_segment = 7'b0000000;
            4'd9: r_segment = 7'b0010000;
            default: r_segment = 7'b1111111;
        endcase 
    end

endmodule
