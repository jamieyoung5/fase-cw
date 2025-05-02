package body Seat_Control with SPARK_Mode => On is
   Current_Positions : Seat_Positions_Array := (others => False);

   procedure Update_Seats (Positions : in Seat_Positions_Array) is
   begin
      Current_Positions := Positions;
   end Update_Seats;

   function All_Seats_Ready return Boolean is
      Ready : Boolean := True;
   begin
      for I in Seat_Id loop
         Ready := Ready and Current_Positions(I);
      end loop;
      return Ready;
   end All_Seats_Ready;
end Seat_Control;
