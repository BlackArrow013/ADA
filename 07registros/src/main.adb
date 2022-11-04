with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   type Edad is range 0..150;

   type Persona is record
      Nombre : Unbounded_String;
      Apellido : Unbounded_String;
      Edad_Persona : Edad;
   end record;

   Una_Persona : Persona;

begin
   Put_Line("¿Cuál es tu nombre?");
   Una_Persona.Nombre := To_Unbounded_String(Get_Line);
   Put_Line("¿Cuál es tu apellido?");
   Una_Persona.Apellido := To_Unbounded_String(Get_Line);
   Put_Line("¿Cuál es tu edad?");
   Una_Persona.Edad_Persona := Edad(Integer'Value(Get_Line));
   Put_Line("Hola, me llamo " & To_String(Una_Persona.Nombre) & " " &
              To_String(Una_Persona.Apellido) & " de " &
              Una_Persona.Edad_Persona'Image & " años");
   null;
end Main;
