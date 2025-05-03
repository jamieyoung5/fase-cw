with Seat_Control; use Seat_Control;
with Mode_Control; use Mode_Control;

package Driving_Control with SPARK_Mode => On is
   subtype Speed_Type is Float range 0.0 .. 300.0;

   procedure Set_Road_Speed_Limit (Limit : in Speed_Type)
     with
       Post =>
         Get_Road_Speed_Limit = Limit
       and then Get_Vehicle_Speed <= Limit;

   procedure Start_Driving
     with
       Pre  => (All_Seats_Ready and then Current_Mode = Drive_Mode),
       Post => (Get_Vehicle_Speed = 0.0);

   procedure Set_Speed (V : in Speed_Type)
     with
       Pre  => (Current_Mode = Drive_Mode and then V <= Get_Road_Speed_Limit),
       Post => (Get_Vehicle_Speed = V);

   function Get_Road_Speed_Limit return Speed_Type;
   function Get_Vehicle_Speed      return Speed_Type;

private
   Road_Speed_Limit_Var : Speed_Type := 0.0;
   Vehicle_Speed        : Speed_Type := 0.0;

   function Get_Road_Speed_Limit return Speed_Type is
     (Road_Speed_Limit_Var);

   function Get_Vehicle_Speed return Speed_Type is
     (Vehicle_Speed);
end Driving_Control;

