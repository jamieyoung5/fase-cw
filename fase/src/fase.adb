with Battery_Monitor; use Battery_Monitor;
with Seat_Control;    use Seat_Control;
with Mode_Control;    use Mode_Control;
with Temperature_Control; use Temperature_Control;
with Appliance_Control;   use Appliance_Control;
with Driving_Control;     use Driving_Control;
procedure Campervan_Control is
begin
Update_Battery_Levels (Driving_Batt => 80.0,
Leisure_Batt => 50.0);

Update_Seats (Positions => (1 => True, 2 => True, 3 => True, 4 => True,
5 => True, 6 => True, 7 => True, 8 => True));

Set_Mode (Camp_Mode);
Set_Temperature (15.0);

if Leisure_Charge >= Min_Leisure_Charge_For_Appliances then
Turn_On (Fridge);
end if;

Set_Mode (Drive_Mode);
Set_Road_Speed_Limit (100.0);
Start_Driving;
Set_Speed (80.0);
end Campervan_Control;
