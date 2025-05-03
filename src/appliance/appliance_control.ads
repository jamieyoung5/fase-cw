with Battery_Monitor; use Battery_Monitor;

package Appliance_Control with SPARK_Mode => On is
   type Appliance_Id is (Fridge, Oven);

   procedure Turn_On (A : in Appliance_Id)
     with Pre  => (Leisure_Charge >= Min_Leisure_Charge_For_Appliances),
          Post => (if A = Fridge then Is_On(Fridge) else Is_On(Oven));

   procedure Turn_Off (A : in Appliance_Id)
     with Post => (if A = Fridge then not Is_On(Fridge) else not Is_On(Oven));

   function Is_On (A : in Appliance_Id) return Boolean;
end Appliance_Control;
