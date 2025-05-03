package body Interlocks is
   procedure Enforce_Window_Heating_Interlock is
   begin
      if Heating_On and then Any_Window_Open then
         Turn_Heating_Off;
      end if;
   end Enforce_Window_Heating_Interlock;

end Interlocks;
