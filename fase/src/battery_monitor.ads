package Battery_Monitor
with SPARK_Mode => On
is
subtype Charge_Percent is Float range 0.0 .. 100.0;
Min_Leisure_Charge_For_Appliances : constant Charge_Percent := 20.0;

procedure Update_Battery_Levels (
Driving_Batt : in Charge_Percent;
Leisure_Batt : in Charge_Percent)
with Pre => (Driving_Batt in Charge_Percent'Range and then
Leisure_Batt in Charge_Percent'Range);

function Leisure_Charge return Charge_Percent;
function Driving_Charge return Charge_Percent;
end Battery_Monitor;
