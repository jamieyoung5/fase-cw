package Battery_Monitor with SPARK_Mode => On is
   subtype Charge_Percent is Float range 0.0 .. 100.0;
   Min_Leisure_Charge_For_Appliances : constant Charge_Percent := 20.0;

   Driving_Charge_Var : Charge_Percent := 100.0;
   Leisure_Charge_Var : Charge_Percent := 100.0;

   procedure Update_Battery_Levels (
     Driving_Batt : in Charge_Percent;
     Leisure_Batt : in Charge_Percent
   )
     with
       Pre  => Driving_Batt in Charge_Percent'Range
             and then Leisure_Batt in Charge_Percent'Range,
       Post => Driving_Charge_Var = Driving_Batt
             and then Leisure_Charge_Var = Leisure_Batt;

   function Get_Driving_Charge return Charge_Percent is (Driving_Charge_Var);
   function Get_Leisure_Charge return Charge_Percent is (Leisure_Charge_Var);
end Battery_Monitor;
