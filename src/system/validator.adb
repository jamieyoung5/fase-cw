with Mode_Control;        use Mode_Control;
with Seat_Control;        use Seat_Control;
with Temperature_Control; use Temperature_Control;
with Battery_Monitor;     use Battery_Monitor;
with Heating_Control;     use Heating_Control;
with Window_Control;      use Window_Control;

package body Validator with SPARK_Mode => On is

   procedure Validate is
      M     : Mode_Type        := Current_Mode;
      Seats : Boolean          := All_Seats_Ready;
      T     : Temperature      := Get_Temperature;
      LC    : Charge_Percent   := Get_Leisure_Charge;
      H     : Boolean          := Heating_On;
      W     : Boolean          := Any_Window_Open;
   begin
      if False then null; end if;
   end Validate;

end Validator;
