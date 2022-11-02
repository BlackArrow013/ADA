with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Movil is

   type PosicionX is new Integer range 0..100;
   type PosicionY is new Integer range 0..100;
   type VelocidadX is new Integer range 0..500;
   type VelocidadY is new Integer range 0..500;
   type Tiempo is new Integer range 1..3600;
   
   type Clase_Vehiculo is tagged private;
   type Vehiculo is access Clase_Vehiculo;   
   
   --Constructor
   function Create(Nombre : Unbounded_String; Velocidad1 : VelocidadX; Velocidad2 : VelocidadY) return Vehiculo;
   
   --Getters
   function Get_Nombre(This:Clase_Vehiculo) return String;
   function Get_PosicionX(This:Clase_Vehiculo) return PosicionX;   
   function Get_PosicionY(This:Clase_Vehiculo) return PosicionY;
   function Get_VelocidadX(This:Clase_Vehiculo) return VehiculoX;   
   function Get_VelocidadY(This:Clase_Vehiculo) return VehiculoY;
   
   --Setters
   procedure Actualizar(Value : Tiempo) is
   begin
      
   end;
   
   --To_String
   function To_String(This:Clase_Vehiculo) return String;
   
private
   
   type Clase_Vehiculo is tagged record
      Nombre : Unbounded_String;
      Posicion1 : PosicionX := 0;
      Posicion2 : PosicionY := 0;
      Velocidad1 : VelocidadX;
      Velocidad2 : VelocidadY;
   end record; 

end Movil;
