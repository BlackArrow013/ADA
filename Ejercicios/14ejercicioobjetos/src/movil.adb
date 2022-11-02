package body Movil is

   function Create(Velocidad1 : VelocidadX; Velocidad2 : VelocidadY) return Vehiculo is
      Result : Vehiculo;
   begin
      Result := new Clase_Vehiculo;      
      Result.Velocidad1 := Velocidad1;
      Result.Velocidad2 := Velocidad2;
      
      return Result;
   end;
   
   function Get_Nombre(This:Clase_Vehiculo) return String is
   begin
      return To_String(This.Nombre);
   end;
   
   function Get_PosicionX(This:Clase_Vehiculo) return PosicionX is
   begin
      return This.Posicion1;
   end;
   
   function Get_PosicionY(This:Clase_Vehiculo) return PosicionY is
   begin
      return This.Posicion2;
   end;
   
   function Get_VelocidadX(This:Clase_Vehiculo) return VehiculoX is
   begin
      return This.Velocidad1;
   end;
   
   function Get_VelocidadY(This:Clase_Vehiculo) return VehiculoY is
   begin
      return This.Velocidad2;
   end;

   function To_String(This:Clase_Vehiculo) return String is
   begin
      return "El vehículo es un " 
        & To_String(This.Nombre) & 
        " y se encuentra en posicion X:" & This.Posicion1'Image &
        ", posicion Y:" & This.Posicion2'Image &
        " a una velocidad 1:" & This.Velocidad1'Image &
        " y velocidad 2:" & This.Velocidad2'Image);
   end;

end Movil;
