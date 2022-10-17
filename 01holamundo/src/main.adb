with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;

procedure Main is
   use Ada.Integer_Text_IO;
   --N : Integer;
   Edad : Integer := 0; --OJO: A Ada le va a gustar más que se especifique el rango de edad.
   Nombre : Unbounded_String;
begin
   --Muestro un mensaje por pantalla.
   --Ada.Text_IO.Put_Line("Hola mundo Ada");
   --Ada.Text_IO.Put_Line("Bienvenidos a un nuevo lenguaje de programación");

   --Una vez que agregamos el use no es necesario anteponer el nombre de la lib
   --  Put_Line("Hola mundo Ada");
   --  Put_Line("Bienvenidos a un nuevo lenguaje de programación");

   --Declarar variables.
   --N := 10;
   --Put_Line(N'Image);
   --Ada.Integer_Text_IO.Put(N);
   --Put(N);
   --Put(N, Width => 10);

   --Obtener valores de entrada salida
   --  Put_Line("Ingrese un número:");
   --  Get(N);
   --  Put(N);

   --Estructuras de control
   --  Put_Line("Ingrese su edad:");
   --  Get(Edad);
   --
   --  --  if Edad >= 18  then
   --  --     Put_Line("Es mayor de edad.");
   --  --  else
   --  --     Put_line("Es menor de edad");
   --  --  end if;
   --
   --  if Edad < 18 then
   --     Put_Line("Es menor de edad.");
   --  elsif Edad in 18..70 then
   --     Put_line("Es mayor de edad.");
   --  else
   --     Put_Line("Es jubilado.");
   --  end if;

   Put_Line("Ingrese su nombre:");
   Nombre := Get_Line;

   Put_Line("Hola, " & Nombre);

   if Edad < 18 then
      Put_Line("Es menor de edad.");
   elsif Edad in 18..70 then
      Put_line("Es mayor de edad.");
   else
      Put_Line("Es jubilado.");
   end if;
end Main;
