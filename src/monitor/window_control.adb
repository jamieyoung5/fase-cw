with Interlocks; use Interlocks;

package body Window_Control with SPARK_Mode => On is

   procedure Open_Window (Id : Window_Id) is
   begin
      Window_State(Id) := True;
      Enforce_Window_Heating_Interlock;
   end Open_Window;

   procedure Close_Window (Id : Window_Id) is
   begin
      Window_State(Id) := False;
   end Close_Window;

end Window_Control;
