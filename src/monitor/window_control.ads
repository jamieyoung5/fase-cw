package Window_Control with SPARK_Mode => On is
   subtype Window_Id is Positive range 1 .. 6;

   Window_State : array (Window_Id) of Boolean := (others => False);

   function Any_Window_Open return Boolean;
   function Window_Is_Open (Id : Window_Id) return Boolean is (Window_State(Id));

   procedure Open_Window  (Id : Window_Id)
     with
       Post => Window_Is_Open(Id);

   procedure Close_Window (Id : Window_Id)
     with
       Post => not Window_Is_Open(Id);

end Window_Control;
