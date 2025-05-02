package body Driving_Control with SPARK_Mode => On is
   procedure Set_Road_Speed_Limit (Limit : in Speed_Type) is
   begin
      Road_Speed_Limit_Var := Limit;
   end Set_Road_Speed_Limit;

   procedure Start_Driving is
   begin
      Vehicle_Speed := 0.0;
   end Start_Driving;

   procedure Set_Speed (V : in Speed_Type) is
   begin
      Vehicle_Speed := V;
   end Set_Speed;
end Driving_Control;
