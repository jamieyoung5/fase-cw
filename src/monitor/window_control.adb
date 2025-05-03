package body Window_Control with SPARK_Mode => On is
   function Any_Window_Open return Boolean is
      Result : Boolean := False;
   begin
      for I in Window_State'Range loop
         Result := Result or Window_State(I);
      end loop;
      return Result;
   end Any_Window_Open;

   procedure Open_Window (Id : Window_Id) is
   begin
      Window_State(Id) := True;
   end Open_Window;

   procedure Close_Window (Id : Window_Id) is
   begin
      Window_State(Id) := False;
   end Close_Window;

   function Window_Is_Open (Id : Window_Id) return Boolean is (Window_State(Id));
end Window_Control;
