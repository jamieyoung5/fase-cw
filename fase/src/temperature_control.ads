package Temperature_Control
with SPARK_Mode => On
is
type Temperature is new Float range -40.0 .. 100.0;
Min_Camp_Temp : constant Temperature := 10.0;
Max_Camp_Temp : constant Temperature := 19.0;

procedure Set_Temperature (T : in Temperature)
with Pre => (T >= Min_Camp_Temp and then T <= Max_Camp_Temp);

function Get_Temperature return Temperature;
end Temperature_Control;
