with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings; use Ada.Strings;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;

package body IO is
   
   Default_String_Error_Message : String := "Entrada Vacia. Vuelva a Ingresar";
   Default_Integer_Error_Message : String := "No Ingreso un Numero.Vuelva a intentar";   

   function Get_NotEmpty_Line
     (Error_Message :String := Default_String_Error_Message) return String is
      use Ada.Text_IO;
   begin
      loop
         declare
            Entrada:String := Get_Line;
         begin
            declare
               Entrada_Sin_Espacios : String := Trim(Entrada, Both);
            begin
               if (Entrada_Sin_Espacios'Length > 0) then 
                  return Entrada_Sin_Espacios; 
               end if;
            end;
         end;
         Put_Line(Error_Message);
      end loop;
   end Get_NotEmpty_Line;
   
   function Try_Get_Integer
     (Value: out Integer) return Boolean is
   begin
      Value := Integer'Value(Get_Line);
      return True;
   exception
      when others => return False;
   end Try_Get_Integer;
   
   
   function Get_Integer
     (Error_Message: String := Default_Integer_Error_Message) return Integer is  
      EntradaCorrecta : Boolean := false;
      Value : Integer; 
   begin
      while not(EntradaCorrecta) loop
         EntradaCorrecta := Try_Get_Integer(Value);
         if not(EntradaCorrecta) then            
            Put_Line(Error_Message);
         end if;         
      end loop;
      return Value;
   end Get_Integer;
   
end IO;
