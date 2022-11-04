with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

package areafiguras is

   type Clase_Figura is abstract tagged private;
   type Figura is access Clase_Figura'Class; --El Class sirve para que el access apunte a objetos de subclases.
   
   --Constructores
   --Como animal es una clase abstracta le quitamos el constructor.
   --  function Create(Value : String) return Animal;
   
   --Getters
   function Get_Nombre(This : in Clase_Figura) return String;
   
   --Setters
   procedure Set_Nombre(This : in Clase_Figura; Value : in String);
   
   --Metodos
   function Calcular_Area(This : in Clase_Figura) return Float;
   
   --Subclases
   type Clase_Rectangulo is new Clase_Figura with private;
   function Create_Rectangulo(Value : in String) return Figura;
   overriding function Calcular_Area(This : in Clase_Rectangulo) return Float;
   
   type Clase_Circulo is new Clase_Figura with private;
   function Create_Circulo(Value : in String) return Figura;
   overriding function Calcular_Area(This : in Clase_Circulo) return Float;
      
private
      
   type Clase_Figura is abstract tagged
      record
         Nombre : Unbounded_String;
      end record;
   
   type Clase_Rectangulo is new Clase_Figura with
      record
         Base : Float;
         Altura : Float;
      end record;
   
   type Clase_Circulo is new Clase_Figura with
      record
         Radio : Float;
         Pi : Float := 3.1415;
      end record;

end areafiguras;
