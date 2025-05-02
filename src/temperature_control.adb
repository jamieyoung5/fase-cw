package body Temperature_Control with SPARK_Mode => On is

  procedure Set_Temperature (T : in Temperature) is
   begin
      Current_Temp := T;
   end Set_Temperature;

end Temperature_Control;
