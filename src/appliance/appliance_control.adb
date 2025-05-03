package body Appliance_Control with SPARK_Mode => On is

   procedure Turn_On (A : in Appliance_Id) is
   begin
      case A is
         when Fridge => Fridge_On := True;
         when Oven   => Oven_On   := True;
      end case;
   end Turn_On;

   procedure Turn_Off (A : in Appliance_Id) is
   begin
      case A is
         when Fridge => Fridge_On := False;
         when Oven   => Oven_On   := False;
      end case;
   end Turn_Off;

end Appliance_Control;
