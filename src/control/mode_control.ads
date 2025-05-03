with Seat_Control; use Seat_Control;

package Mode_Control with SPARK_Mode => On is
   type Mode_Type is (Drive_Mode, Camp_Mode);

   Mode_State : Mode_Type := Drive_Mode;

   procedure Set_Mode (M : in Mode_Type)
     with
       Pre  => ((M = Drive_Mode and then All_Seats_Ready) or else (M = Camp_Mode)),
       Post => Mode_State = M;

   function Current_Mode return Mode_Type is (Mode_State);
end Mode_Control;
