package body Temperature_Control
with SPARK_Mode => On
is
Current_Temp : Temperature := Min_Camp_Temp;

procedure Set_Temperature (T : in Temperature) is
begin
Current_Temp := T;
end Set_Temperature;

function Get_Temperature return Temperature is
begin
return Current_Temp;
end Get_Temperature;
end Temperature_Control;
