with IO; use IO;
with Ada.Text_IO; use Ada.Text_IO;

generic
   type Enum_Type is (<>);
package IOEnums is
   
   Default_Error_Message : String := "Entrada inválida. Reintente.";

   function Try_Get_Enum(Enum: out Enum_Type) return Boolean;
   
   function Get_Enum(Prompt : String := ""; 
                     Error_Message: String := Default_Error_Message)
                     return Enum_Type;

end IOEnums;
