with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with movil; use movil;

procedure Main is
   Coche : Vehiculo;
   Velocidad1 : VelocidadX := 10;
   Velocidad2 : VelocidadY := 20;
begin
   --Generar la clase Movil con los siguientes atributos--
   --PosicionX, PosicionY, VelocidadX, VelocidadY--
   --Los objetos de esa clase se inicializan en el (0,0) con una velocidad X e Y que--
   --debe ser definida al momento de instanciar un objeto.--
   --Agregar un método To_String() que muestra la posición actual del móvil.
   --Agregar un método Actualizar() que recibe un delta de tiempo y actualiza la posición del móvil.
   Coche := Create("Coche", Velocidad1, Velocidad2);
   Put_Line(Coche.To_String);
   Put_Line("Nombre: " & Coche.Get_Nombre);
end Main;
