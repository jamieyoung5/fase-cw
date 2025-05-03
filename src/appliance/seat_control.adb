package body Seat_Control with SPARK_Mode => On is

   procedure Update_Seats (Positions : in Seat_Positions_Array) is
   begin
      Current_Positions := Positions;
   end Update_Seats;

end Seat_Control;
