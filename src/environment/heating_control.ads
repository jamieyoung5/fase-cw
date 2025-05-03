with Window_Control; use Window_Control;

package Heating_Control with SPARK_Mode => On is
   Heating_State : Boolean := False;

   procedure Turn_Heating_On
     with Pre  => not Any_Window_Open,
          Post => Heating_State;

   procedure Turn_Heating_Off
     with Post => not Heating_State;

   function Heating_On return Boolean is (Heating_State);
end Heating_Control;
