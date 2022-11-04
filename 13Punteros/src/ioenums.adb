package body IOEnums is

   function Try_Get_Enum(Enum: out Enum_Type) return Boolean is
   begin
      Enum := Enum_Type'Value(Get_Line);
      return True;
   exception
      when others => return False;
   end Try_Get_Enum;
   
   function Get_Enum(Prompt : String := ""; 
                     Error_Message: String := Default_Error_Message)
                     return Enum_Type is
      Entrada_Correcta : Boolean;
      Result : Enum_Type;
   begin      
      if (Prompt'Length > 0) then
         Put_Line(Prompt);
      end if;
      
      for P in Enum_Type loop
         Put_Line(P'Image);
      end loop;
      
      loop
         Entrada_Correcta := Try_Get_Enum(Result);
         if (Entrada_Correcta) then
            return Result;
         end if;
         Put_Line(Error_Message);
      end loop;
   end Get_Enum;

end IOEnums;
