with Mode_Control;        use Mode_Control;
with Seat_Control;        use Seat_Control;
with Temperature_Control; use Temperature_Control;
with Battery_Monitor;     use Battery_Monitor;
with Heating_Control;     use Heating_Control;
with Window_Control;      use Window_Control;
with Validator;           use Validator;

package Validator_Harness with SPARK_Mode => On is
   procedure Check_System
     with
       Post => True;
end Validator_Harness;
