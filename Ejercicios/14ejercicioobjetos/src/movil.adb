package body Movil is

   function Create(Nombre : String; Velocidad1 : VelocidadX; Velocidad2 : VelocidadY) return Vehiculo is
      Result : Vehiculo;
   begin
      Result := new Clase_Vehiculo;  
      Result.Nombre := To_Unbounded_String(Nombre);
      Result.Velocidad1 := Velocidad1;
      Result.Velocidad2 := Velocidad2;
      
      return Result;
   end;
   
   function Get_Nombre(This : Clase_Vehiculo) return String is
   begin
      return To_String(This.Nombre);
   end;
   
   function Get_PosicionX(This : Clase_Vehiculo) return PosicionX is
   begin
      return This.Posicion1;
   end;
   
   function Get_PosicionY(This : Clase_Vehiculo) return PosicionY is
   begin
      return This.Posicion2;
   end;
   
   function Get_VelocidadX(This : Clase_Vehiculo) return VelocidadX is
   begin
      return This.Velocidad1;
   end;
   
   function Get_VelocidadY(This : Clase_Vehiculo) return VelocidadY is
   begin
      return This.Velocidad2;
   end;
   
   procedure Set_Nombre(Vehiculo : Clase_Vehiculo; Nombre : String) is
   begin
      Vehiculo.Nombre := Nombre;
   end;
   procedure Set_PosicionX(Vehiculo : Clase_Vehiculo; Posicion1 : PosicionX) is
   begin
      Vehiculo.Posicion1 := Posicion1;
   end;
   procedure Set_PosicionY(Vehiculo : Clase_Vehiculo; Posicion2 : PosicionY) is
   begin
      Vehiculo.Posicion2 := Posicion2;
   end;
   
   procedure Set_VelocidadX(Vehiculo : Clase_Vehiculo; Velocidad1 : VelocidadX) is
   begin
      Vehiculo.Velocidad1 := Velocidad1;
   end;
   
   procedure Set_VelocidadY(Vehiculo : Clase_Vehiculo; Velocidad2 : VelocidadY) is
   begin
      Vehiculo.Velocidad2 := Velocidad2;
   end;

   function To_String(This:Clase_Vehiculo) return String is
   begin
      return "El vehículo es un " 
        & To_String(This.Nombre) & 
        " y se encuentra en posicion X:" & This.Posicion1'Image &
        ", posicion Y:" & This.Posicion2'Image &
        " a una velocidad 1:" & This.Velocidad1'Image &
        " y velocidad 2:" & This.Velocidad2'Image;
   end;
   
   procedure Actualizar(Vehiculo : Clase_Vehiculo; Tiempo_Actual : Tiempo) is
   begin
      Vehiculo.Posicion1 := Vehiculo.Posicion1 + (Vehiculo.Posicion1 * Tiempo_Actual);
      Vehiculo.Posicion2 := Vehiculo.Posicion2 + (Vehiculo.Posicion2 * Tiempo_Actual);
   end;

end Movil;
