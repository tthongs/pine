module digital_clock(
    input clk, clr, PA_PL,HR,MIN,
    output khz, hz,
    output reg [6:0] segment,
    output reg [7:0] anode
);

    reg qkhz, qhz;

    reg [15:0] counter;
    always @(posedge clk) begin
        if(!clr) begin
            counter <= 0;
            qkhz <= 0;
        end
        else if(counter == 16'd49999) begin
            counter <= 0;
            qkhz <= ~qkhz;
        end
        else
            counter <= counter + 1;
    end
    assign khz = qkhz;

    
    reg [25:0] count;
    always @(posedge clk) begin
        if(!clr) begin
            count <= 0;
            qhz <= 0;
        end
        else if(count == 26'd49999999) begin
            count <= 0;
            qhz <= ~qhz;
        end
        else
            count <= count + 1;
    end
    assign hz = qhz;


    reg [5:0] sec;
    reg [5:0] min;
    reg [4:0] hr;

    always @(posedge hz or negedge clr) begin
        if(!clr) begin
            sec <= 0;
            min <= 0;
            hr  <= 0;
        end
        else if(PA_PL) begin
            if(sec == 59) begin
                sec <= 0;
                if(min == 59) begin
                    min <= 0;
                    if(hr == 23)
                        hr <= 0;
                    
                    else begin
                        hr <= hr+1;
                    end
                end
                
                else begin
                    min <= min + 1;
                end
            end
            else
                sec <= sec + 1;
        end
    end



     reg [2:0] driver;   
     reg [3:0] print;
   
       always @(posedge khz or negedge clr) begin
           if(!clr)
               driver <= 0;
           else if(driver == 5)
               driver <= 0;
           else
               driver <= driver + 1;
       end
   
       always @(*) begin
           case(driver)
               3'd0: begin
                   anode = 8'b11111110; 
                   print = sec % 10;
               end
               3'd1: begin
                   anode = 8'b11111101;
                   print = sec / 10;
               end
               3'd2: begin
                   anode = 8'b11111011;
                   print = min % 10;
               end
               3'd3: begin
                   anode = 8'b11110111;
                   print = min / 10;
               end
               3'd4: begin
                   anode = 8'b11101111;
                   print = hr % 10;
               end
               3'd5: begin
                   anode = 8'b11011111;
                   print = hr / 10;
               end
               3'd6: begin
                   anode = 8'b10111111;
                   print = 0;
               end
               3'd7: begin
                   anode = 8'b01111111;
                   print = 0;
                   end
               default: begin
                   anode = 8'b11111111;
                   print = 0;
               end
           endcase
   
           case(print)
               4'd0: segment = 7'b1000000;
               4'd1: segment = 7'b1111001;
               4'd2: segment = 7'b0100100;
               4'd3: segment = 7'b0110000;
               4'd4: segment = 7'b0011001;
               4'd5: segment = 7'b0010010;
               4'd6: segment = 7'b0000010;
               4'd7: segment = 7'b1111000;
               4'd8: segment = 7'b0000000;
               4'd9: segment = 7'b0010000;
               default: segment = 7'b1111111;
           endcase
       end
   endmodule
