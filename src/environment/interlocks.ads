with Heating_Control; use Heating_Control;
with Window_Control;  use Window_Control;

-- this package helps avoid circular dependencies
package Interlocks WITH SPARK_Mode => On is
   procedure Enforce_Window_Heating_Interlock
     with
       Post => not (Heating_On) and then Any_Window_Open;
end Interlocks;
