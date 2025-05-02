package body Camp_Control with SPARK_Mode => On is
   procedure Set_Temperature (T : in Temperature) is
   begin
     Temperature_Control.Set_Temperature (T);
   end Set_Temperature;

   procedure Turn_On (A : in Appliance_Id) is
   begin
     Appliance_Control.Turn_On (A);
   end Turn_On;
end Camp_Control;
