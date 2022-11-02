procedure Main is
   Coche : Vehiculo;
begin
   --Generar la clase Movil con los siguientes atributos--
   --PosicionX, PosicionY, VelocidadX, VelocidadY--
   --Los objetos de esa clase se inicializan en el (0,0) con una velocidad X e Y que--
   --debe ser definida al momento de instanciar un objeto.--
   --Agregar un método To_String() que muestra la posición actual del móvil.
   --Agregar un método Actualizar() que recibe un delta de tiempo y actualiza la posición del móvil.
   Coche := Create("Coche", 10, 20);
   Put_Line(Coche.To_String);
   Put_Line("Nombre: " & Coche.Get_Nombre);
end Main;
