package body Mode_Control with SPARK_Mode => On is

   procedure Set_Mode (M : in Mode_Type) is
   begin
      Mode_State := M;
   end Set_Mode;
end Mode_Control;
