with Battery_Monitor; use Battery_Monitor;

package Appliance_Control with SPARK_Mode => On is

   -- state visible for aspects and bodies
   Fridge_On : Boolean := False;
   Oven_On   : Boolean := False;

   type Appliance_Id is (Fridge, Oven);

   procedure Turn_On (A : in Appliance_Id)
     with
       Pre    => Get_Leisure_Charge >= Min_Leisure_Charge_For_Appliances,
       Post   => (if A = Fridge
                  then Is_On (Fridge)
                  else Is_On (Oven)),
       Global => (
         Proof_In => (Leisure_Charge_Var),      -- used only in Pre
         In_Out   => (Fridge_On, Oven_On)        -- mutated by the body
       );

   procedure Turn_Off (A : in Appliance_Id)
     with
       Post   => (if A = Fridge
                  then not Is_On (Fridge)
                  else not Is_On (Oven)),
       Global => (In_Out => (Fridge_On, Oven_On));

   function Is_On (A : in Appliance_Id) return Boolean
     is (if A = Fridge then Fridge_On else Oven_On)
     with
       Global => (Input => (Fridge_On, Oven_On));  -- read at run-time

end Appliance_Control;
