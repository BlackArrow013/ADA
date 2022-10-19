with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings; use Ada.Strings;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;

package body IO is

   function Get_NotEmpty_Line     
     (ErrorMessage :String := "Entrada Vacia. Vuelva a Ingresar") return String is
   begin
      loop
         declare
            Entrada : String := Get_Line;
         begin
            declare
               Entrada_Sin_Espacios : String := Trim(Entrada, Both);
            begin
               if (Entrada_Sin_Espacios'Length > 0) then
                  return Entrada_Sin_Espacios;
               end if;
            end;            
         end;
         Put_Line(ErrorMessage);
      end loop;      
   end Get_NotEmpty_Line;
   
   function Try_Get_Integer
     (Value : out Integer) return boolean is
   begin
      Value := Integer'Value(Get_Line);
      return true;
   exception
         when others => return false;
   end Try_Get_Integer;
   
   function Get_Integer
     (ErrorMessage : String := "No ingresó un número. Vuelva a intentarlo") return Integer is
   begin
      declare
         Value : Integer;         
      begin
         loop
            if (Try_Get_Integer(Value)) then
               return Value;
            end if;
            Put_Line(ErrorMessage);
         end loop;
      end;                 
   end Get_Integer;     
   

end IO;
