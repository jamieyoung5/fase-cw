package body Driving_Control
with SPARK_Mode => On
is
Road_Speed_Limit_Var : Speed_Type := 0.0;
Vehicle_Speed        : Speed_Type := 0.0;

procedure Set_Road_Speed_Limit (Limit : in Speed_Type) is
begin
Road_Speed_Limit_Var := Limit;
end Set_Road_Speed_Limit;

function Get_Road_Speed_Limit return Speed_Type is
begin
return Road_Speed_Limit_Var;
end Get_Road_Speed_Limit;

procedure Start_Driving is
begin
null;
end Start_Driving;

procedure Set_Speed (V : in Speed_Type) is
begin
Vehicle_Speed := V;
end Set_Speed;
end Driving_Control;
