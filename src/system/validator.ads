with Mode_Control;        use Mode_Control;
with Seat_Control;        use Seat_Control;
with Temperature_Control; use Temperature_Control;
with Battery_Monitor;     use Battery_Monitor;
with Heating_Control;     use Heating_Control;
with Window_Control;      use Window_Control;

package Validator with SPARK_Mode => On is
    procedure Validate
     with
       Post => (Current_Mode = Drive_Mode and then All_Seats_Ready) or else
               (Current_Mode = Camp_Mode and then
                Get_Temperature in Min_Camp_Temp .. Max_Camp_Temp and then
                Leisure_Charge >= Min_Leisure_Charge_For_Appliances and then
                (not Heating_On or else not Any_Window_Open));
end Validator;
