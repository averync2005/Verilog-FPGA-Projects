`timescale 1ns / 1ps
module Car_Safety_System(SB, DOOR, KEY, BRK, PARK, HOOD, BAT_OK, AIB_OK, TMP_OK, PASS_OCC, SB_P, TRUNK, PBRK, SRV, START_PERMIT, CHIME, WARN_PRI2, WARN_PRI1, SEAT_WARN, DOOR_WARN, HOOD_WARN, TRUNK_WARN, BAT_WARN, AIRBAG_WARN, TEMP_WARN);
    input wire SB, DOOR, KEY, BRK, PARK, HOOD, BAT_OK, AIB_OK, TMP_OK, PASS_OCC, SB_P, TRUNK, PBRK, SRV;    
    output wire START_PERMIT, CHIME, WARN_PRI2, WARN_PRI1, SEAT_WARN, DOOR_WARN, HOOD_WARN, TRUNK_WARN, BAT_WARN, AIRBAG_WARN, TEMP_WARN;
    
    //Priority 2 Issues
    assign TEMP_WARN = !TMP_OK;
    assign TRUNK_WARN = !TRUNK;
    assign HOOD_WARN = !HOOD;
    assign AIRBAG_WARN = !AIB_OK;
    assign WARN_PRI2 = TEMP_WARN | TRUNK_WARN | HOOD_WARN | AIRBAG_WARN;
        
    //Priority 1 Issues
    assign SEAT_WARN = (!SB_P & PASS_OCC) | !SB;
    assign BAT_WARN = !BAT_OK;
    assign DOOR_WARN = !DOOR;
    assign WARN_PRI1 = SEAT_WARN | BAT_WARN | DOOR_WARN;
    
    //Engine on permissions and Chime signal
    assign CHIME = DOOR_WARN | SEAT_WARN | (KEY & !BRK) | TRUNK_WARN;
    assign START_PERMIT = !BAT_WARN & !HOOD_WARN & KEY & PARK & !SRV;
endmodule
