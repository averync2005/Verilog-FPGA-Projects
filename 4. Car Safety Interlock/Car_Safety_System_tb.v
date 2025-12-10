`timescale 1ns/1ps
module Car_Safety_System_tb;

reg SB, DOOR, KEY, BRK, PARK, HOOD, BAT_OK, AIB_OK, TMP_OK, PASS_OCC, SB_P, TRUNK, PBRK, SRV;  // Inputs
wire START_PERMIT, CHIME, WARN_PRI2, WARN_PRI1, SEAT_WARN, HOOD_WARN, TRUNK_WARN, BAT_WARN, AIRBAG_WARN, TEMP_WARN;  // Output
 
// Modules
Car_Safety_System CAR (SB, DOOR, KEY, BRK, PARK, HOOD, BAT_OK, AIB_OK, TMP_OK, PASS_OCC, SB_P, TRUNK, PBRK, SRV, START_PERMIT, CHIME, WARN_PRI2, WARN_PRI1, SEAT_WARN, HOOD_WARN, TRUNK_WARN, BAT_WARN, AIRBAG_WARN, TEMP_WARN);
integer i0;
integer i1;
integer i2;
integer i3;
integer i4;
integer i5;
integer i6;
integer i7;
integer i8;
integer i9;
integer i10;
integer i11;
integer i12;
integer i13;
initial begin

    SB = 1'b0;
    for(i0=0; i0<2; i0=i0+1) begin
        DOOR = 1'b0;
        for(i1=0; i1<2; i1=i1+1) begin
            KEY = 1'b0;
            for(i2=0; i2<2; i2=i2+1) begin                
                BRK = 1'b0;
                for(i3=0; i3<2; i3=i3+1) begin
                    PARK = 1'b0;
                    for(i4=0; i4<2; i4=i4+1) begin
                        HOOD = 1'b0;
                        for(i5=0; i5<2; i5=i5+1) begin
                            BAT_OK = 1'b0;
                            for(i6=0; i6<2; i6=i6+1) begin
                                AIB_OK = 1'b0;
                                for(i7=0; i7<2; i7=i7+1) begin
                                    TMP_OK = 1'b0;
                                    for(i8=0; i8<2; i8=i8+1) begin
                                        PASS_OCC = 1'b0;
                                        for(i9=0; i9<2; i9=i9+1) begin 
                                            SB_P = 1'b0;
                                            for(i10=0; i10<2; i10=i10+1) begin
                                                TRUNK = 1'b0;
                                                for(i11=0; i11<2; i11=i11+1) begin
                                                    PBRK = 1'b0;
                                                    for(i12=0; i12<2; i12=i12+1) begin
                                                        SRV = 1'b0;
                                                        for(i13=0; i13<2; i13=i13+1) begin
                                                            #10 SRV = SRV + 1'd1;
                                                        end
                                                        
                                                        #10 PBRK = PBRK + 1'd1;
                                                    end
                                                    
                                                    #10 TRUNK = TRUNK + 1'd1;
                                                end
                                                
                                                #10 SB_P = SB_P + 1'd1;
                                            end
                                            
                                            #10 PASS_OCC = PASS_OCC + 1'd1;
                                        end
                                        
                                        #10 TMP_OK = TMP_OK + 1'd1;
                                    end
                                    
                                    #10 AIB_OK = AIB_OK + 1'd1;
                                end
                                
                                #10 BAT_OK = BAT_OK + 1'd1;
                            end
                            
                            #10 HOOD = HOOD + 1'd1;
                        end
                        
                        #10 PARK = PARK + 1'd1;
                    end
                    
                    #10 BRK = BRK + 1'd1;
                end
                
                #10 KEY = KEY + 1'd1;
            end
            
            #10 DOOR = DOOR + 1'd1;
        end
        
        #10 SB = SB + 1'd1;
    end    
  
	#10 $stop;

end
endmodule
