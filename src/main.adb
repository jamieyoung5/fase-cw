with Mode_Control;     use Mode_Control;
with Seat_Control;     use Seat_Control;
with Driving_Control;  use Driving_Control;

procedure Main is
begin
   Update_Seats ((1 .. 8 => True));
   Set_Mode (Drive_Mode);
   Start_Driving;
   Set_Road_Speed_Limit (50.0);
   Set_Speed (40.0);
end Main;
