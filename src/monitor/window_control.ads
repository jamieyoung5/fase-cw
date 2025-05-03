package Window_Control with SPARK_Mode => On is
   subtype Window_Id is Positive range 1 .. 6;

   Window_State : array (Window_Id) of Boolean := (1 .. 6 => False);

   function Any_Window_Open return Boolean is
     (Window_State(1) or else Window_State(2)
      or else Window_State(3) or else Window_State(4)
      or else Window_State(5) or else Window_State(6));

   function Window_Is_Open (Id : Window_Id) return Boolean is
     (Window_State(Id));

   procedure Open_Window  (Id : Window_Id)
     with Post => Window_State(Id);

   procedure Close_Window (Id : Window_Id)
     with Post => not Window_State(Id);
end Window_Control;
