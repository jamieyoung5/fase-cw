with Seat_Control; use Seat_Control;
package Driving_Control
with SPARK_Mode => On
is
subtype Speed_Type is Float range 0.0 .. 300.0;

procedure Set_Road_Speed_Limit (Limit : in Speed_Type);
function Get_Road_Speed_Limit return Speed_Type;

procedure Start_Driving
with Pre => All_Seats_Ready;

procedure Set_Speed (V : in Speed_Type)
with Pre => (V <= Get_Road_Speed_Limit);
end Driving_Control;
