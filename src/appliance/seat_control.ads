package Seat_Control with SPARK_Mode => On is
   subtype Seat_Id is Integer range 1 .. 8;
   type Seat_Positions_Array is array (Seat_Id) of Boolean;

   Current_Positions : Seat_Positions_Array := (1 .. 8 => False);

   procedure Update_Seats (Positions : in Seat_Positions_Array)
     with Post => Current_Positions = Positions;

   function All_Seats_Ready return Boolean
     is (Current_Positions = (1 .. 8 => True));

   function Get_Current_Positions return Seat_Positions_Array
     is (Current_Positions);
end Seat_Control;
