with Window_Control; use Window_Control;

package Heating_Control with SPARK_Mode => On is
   procedure Turn_Heating_On
     with
       Pre  => not Any_Window_Open,
       Post => Heating_On;

   procedure Turn_Heating_Off
     with
       Post => not Heating_On;

   function Heating_On return Boolean;

private
   Heating_State : Boolean := False;

   function Heating_On return Boolean is
     (Heating_State);
end Heating_Control;
