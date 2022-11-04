with areafiguras; use areafiguras;
with Ada.Text_IO; use Ada.Text_IO;
with IO; use IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Main is

begin
   --Figuras!
   --Va de lo siguiente
   --Crear un paquete--
   --Tenemos la clase abstracta figura con el metodo abstracto Calcular_Area--
   --Heredan el cuadrado y el circulo--
   --El rectacgulo tiene base y altura--
   --El circulo tiene radio--
   --No se olviden de los getters!! y los constructores!!--
   --Las subclases implementan el metodo Calcular_Area--
   --En el main generar un vector de 10 figuras en forma aleatoria que
   --tenga circulos y rectangulos con tamaño tambien aleatorio
   --Mostrar la sumatoria del area de todas las figuras una vez cargado el array

   declare
      type Array_Figuras is array(Positive range <>) of Figura;
      G : Generator;
      G2 : Generator;
      Azar : Uniformly_Distributed;
      Azar2 : Uniformly_Distributed;
      Una_Figura : Figura;
      Figuras : Array_Figuras(1..10) := (others => null);
      Es_Rectangulo : Boolean;
   begin
      Reset(G);
      for I in Figuras'Range loop
         Azar := Random(G);
         if Azar < 0.5 then
            Es_Rectangulo := True;
         else
            Es_Rectangulo := False;
         end if;
      end loop;
   end;

end Main;
