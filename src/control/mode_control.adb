package body Mode_Control with SPARK_Mode => On is
   Mode_State : Mode_Type := Drive_Mode;

   procedure Set_Mode (M : in Mode_Type) is
   begin
      Mode_State := M;
   end Set_Mode;

   function Current_Mode return Mode_Type is (Mode_State);
end Mode_Control;
