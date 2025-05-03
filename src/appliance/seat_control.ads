package Seat_Control with SPARK_Mode => On is
   subtype Seat_Id is Integer range 1 .. 8;
   type Seat_Positions_Array is array (Seat_Id) of Boolean;

   procedure Update_Seats (Positions : in Seat_Positions_Array);
   function All_Seats_Ready return Boolean;
end Seat_Control;
