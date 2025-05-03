with Mode_Control;        use Mode_Control;
with Seat_Control;        use Seat_Control;
with Temperature_Control; use Temperature_Control;
with Battery_Monitor;     use Battery_Monitor;
with Heating_Control;     use Heating_Control;
with Window_Control;      use Window_Control;
with Validator;           use Validator;

package body Validator_Harness with SPARK_Mode => On is
   procedure Check_System is
   begin
      Update_Seats ((1 .. 8 => True));
      Set_Mode (Drive_Mode);
      Validator.Validate;

      Set_Mode (Camp_Mode);
      Temperature_Control.Set_Temperature (15.0);
      Battery_Monitor.Update_Battery_Levels
        (Driving_Batt => 80.0, Leisure_Batt => 80.0);

      Heating_Control.Turn_Heating_Off;
      for Id in Window_Id loop
         Close_Window (Id);
      end loop;

      Validator.Validate;
   end Check_System;
end Validator_Harness;
