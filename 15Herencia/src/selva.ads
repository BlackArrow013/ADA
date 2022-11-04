with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

package selva is

   type Clase_Animal is abstract tagged private;
   type Animal is access Clase_Animal'Class; --El Class sirve para que el access apunte a objetos de subclases.
   
   --Constructores
   --Como animal es una clase abstracta le quitamos el constructor.
   --  function Create(Value : String) return Animal;
   
   --Getters
   function Get_Nombre(This : in Clase_Animal) return String;
   
   --Metodos
   procedure Hablar(This : in Clase_Animal) is abstract;
   
   --Subclases
   type Clase_Leon is new Clase_Animal with private;
   function Create_Leon(Value : String) return Animal;
   overriding procedure Hablar(This : in Clase_Leon);
   
   type Clase_Jirafa is new Clase_Animal with private;
   function Create_Jirafa(Value : String) return Animal;
   overriding procedure Hablar(This : in Clase_Jirafa);
   
   type Clase_Pato is new Clase_Animal with private;
   function Create_Pato(Value : String) return Animal;
   overriding procedure Hablar(This : in Clase_Pato);
   
   type Clase_Aguila is new Clase_Animal with private;   
   function Create_Aguila(Value : String) return Animal;   
   overriding procedure Hablar(this: in Clase_Aguila);
      
private
      
      type Clase_Animal is abstract tagged
         record
            Nombre : Unbounded_String;
      end record;
   
   type Clase_Leon is new Clase_Animal with
      record
         null;
      end record;
   
   type Clase_Jirafa is new Clase_Animal with
      record
         null;
      end record;
   
   type Clase_Pato is new Clase_Animal with
      record
         null;
      end record;
   
   type Clase_Aguila is new Clase_Animal with
      record
         null;
      end record;

end selva;
