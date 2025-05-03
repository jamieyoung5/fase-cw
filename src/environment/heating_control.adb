package body Heating_Control with SPARK_Mode => On is
   procedure Turn_Heating_On is
   begin
      Heating_State := True;
   end Turn_Heating_On;

   procedure Turn_Heating_Off is
   begin
      Heating_State := False;
   end Turn_Heating_Off;
end Heating_Control;
