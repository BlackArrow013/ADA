with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with personaje; use personaje;

procedure Main is

   Khazix : Campeon;
begin
   --Khazix := new Clase_Campeon;
   Khazix := Create("Khazix");
   --Khazix.Nombre := To_Unbounded_String("Khazix");
   --Khazix.Nivel := 1; --Se comenta porque no respeta el encapsulamiento.
   --Khazix.Experiencia := 0; --Se comenta porque no respeta el encapsulamiento.
   Put_Line(Khazix.To_String);
   Put_Line("Probando los getters");
   Put_Line("Nombre: " & Khazix.Get_Nombre);
   Put_Line("Nivel:" & Khazix.Get_Nivel'Image);
end Main;
