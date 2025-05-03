with Mode_Control;     use Mode_Control;
with Seat_Control;     use Seat_Control;
with Driving_Control;  use Driving_Control;

procedure Main
  with
    SPARK_Mode => On,
    Post =>
      Current_Mode = Drive_Mode
      and then Current_Positions = (1 .. 8 => True)
      and then Get_Road_Speed_Limit = 50.0
      and then Get_Vehicle_Speed = 40.0;
