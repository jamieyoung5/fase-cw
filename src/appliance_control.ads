with Battery_Monitor; use Battery_Monitor;

package Appliance_Control with SPARK_Mode => On is
   type Appliance_Id is (Fridge, Oven);

   procedure Turn_On (A : in Appliance_Id)
     with Pre => (Leisure_Charge >= Min_Leisure_Charge_For_Appliances);

   procedure Turn_Off (A : in Appliance_Id);
end Appliance_Control;
