module PIR_LED(
    input wire pir_sensor, // PIR sensör sinyali
    output reg red_led,   // Kırmızı LED çıkışı
    output reg green_led  // Yeşil LED çıkışı
);
    
    wire previous_state;
    wire current_state;
    
    parameter STABLE = 1'b0;
    parameter MOTION_DETECTED = 1'b1;
    
    assign previous_state = pir_sensor;
    assign current_state = pir_sensor;
    
    always @(*)
    begin
        case (current_state)
            STABLE:
                begin
                    red_led = 1'b0;
                    green_led = 1'b1;
                end
            MOTION_DETECTED:
                begin
                    red_led = 1'b1;
                    green_led = 1'b0;
                end
        endcase
    end

endmodule
