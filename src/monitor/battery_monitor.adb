package body Battery_Monitor with SPARK_Mode => On is
   procedure Update_Battery_Levels (
     Driving_Batt : in Charge_Percent;
     Leisure_Batt : in Charge_Percent
   ) is
   begin
      Driving_Charge_Var := Driving_Batt;
      Leisure_Charge_Var := Leisure_Batt;
   end Update_Battery_Levels;
end Battery_Monitor;
