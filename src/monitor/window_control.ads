package Window_Control with SPARK_Mode => On is
   subtype Window_Id is Positive range 1 .. 6;

   function Any_Window_Open return Boolean;

   procedure Open_Window  (Id : Window_Id);
   procedure Close_Window (Id : Window_Id);
private
   Window_State : array (Window_Id) of Boolean := (others => False);
end Window_Control;
