with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Movil is

   type Medidas is new Integer range 0..5000;
   subtype PosicionX is Medidas;
   subtype PosicionY is Medidas;
   subtype VelocidadX is Medidas;
   subtype VelocidadY is Medidas;
   subtype Tiempo is Medidas;
   
   type Clase_Vehiculo is tagged private;
   type Vehiculo is access Clase_Vehiculo;   
   
   --Constructor
   function Create(Nombre : String; Velocidad1 : VelocidadX; Velocidad2 : VelocidadY) return Vehiculo;
   
   --Getters
   function Get_Nombre(This : Clase_Vehiculo) return String;
   function Get_PosicionX(This : Clase_Vehiculo) return PosicionX;   
   function Get_PosicionY(This : Clase_Vehiculo) return PosicionY;
   function Get_VelocidadX(This : Clase_Vehiculo) return VelocidadX;   
   function Get_VelocidadY(This : Clase_Vehiculo) return VelocidadY;
   
   --Setters
   procedure Set_Nombre(Vehiculo : Clase_Vehiculo; Nombre : String);
   procedure Set_PosicionX(Vehiculo : Clase_Vehiculo; Posicion1 : PosicionX);
   procedure Set_PosicionY(Vehiculo : Clase_Vehiculo; Posicion2 : PosicionY);
   procedure Set_VelocidadX(Vehiculo : Clase_Vehiculo; Velocidad1 : VelocidadX);
   procedure Set_VelocidadY(Vehiculo : Clase_Vehiculo; Velocidad2 : VelocidadY);
   
   --To_String
   function To_String(This : Clase_Vehiculo) return String;
   
   --Otros métodos
   procedure Actualizar(Vehiculo : Clase_Vehiculo; Tiempo_Actual : Tiempo);
   
private
   
   type Clase_Vehiculo is tagged record
      Nombre : Unbounded_String;
      Posicion1 : PosicionX := 0;
      Posicion2 : PosicionY := 0;
      Velocidad1 : VelocidadX;
      Velocidad2 : VelocidadY;
   end record; 

end Movil;
