package body Battery_Monitor with SPARK_Mode => On is
   Current_Driving_Charge : Charge_Percent := 100.0;
   Current_Leisure_Charge : Charge_Percent := 100.0;

   procedure Update_Battery_Levels (
                                    Driving_Batt : in Charge_Percent;
                                    Leisure_Batt : in Charge_Percent) is
   begin
      Current_Driving_Charge := Driving_Batt;
      Current_Leisure_Charge := Leisure_Batt;
   end Update_Battery_Levels;

   function Leisure_Charge return Charge_Percent is
   begin
      return Current_Leisure_Charge;
   end Leisure_Charge;

   function Driving_Charge return Charge_Percent is
   begin
      return Current_Driving_Charge;
   end Driving_Charge;
end Battery_Monitor;
