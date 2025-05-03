with Mode_Control;        use Mode_Control;
with Temperature_Control; use Temperature_Control;
with Battery_Monitor;     use Battery_Monitor;
with Appliance_Control;   use Appliance_Control;

package Camp_Control with SPARK_Mode => On is
   procedure Set_Temperature (T : in Temperature)
     with
       Pre  => Current_Mode = Camp_Mode and then
               T in Min_Camp_Temp .. Max_Camp_Temp,
       Post => Get_Temperature = T;

   procedure Turn_On (A : in Appliance_Id)
     with
       Pre  => Current_Mode = Camp_Mode and then
               Get_Leisure_Charge >= Min_Leisure_Charge_For_Appliances,
       Post => Is_On(A);
end Camp_Control;
