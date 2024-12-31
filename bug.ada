```ada
function Uncommon_Error_Example (Input : Integer) return Integer is
   Result : Integer := 0;
begin
   if Input > 0 then
      Result := Input / (Input - Input);
      -- Division by zero error happens here if Input is 0
   else
      Result := Input * 2;
   end if;
   return Result;
end Uncommon_Error_Example;

--Example of how this function can throw an error
with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   Result : Integer;
begin
   Result := Uncommon_Error_Example(0); -- this will raise Constraint_Error
   Put_Line("Result: " & Integer'Image(Result));
exception
   when Constraint_Error =>
      Put_Line("Constraint Error occurred");
   when others =>
      Put_Line("Unexpected Error Occurred");
end Main;
```