with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Text_IO;
with Velocidad_Final; use Velocidad_Final;

procedure Main is

begin
   --Crear una librería que se llama física.
   --Definir los siguientes tipos de datos en esa librería.
   --Distancia.
   --Velocidad.
   --Tiempo.
   --Aceleración.
   --Agregar un método que calcula la velocidad de un móvil después de x tiempo.
   -- Vf = X0 + Vinicial * t + 1/2 * a * t²
   -- function Posicion_Final(Distancia, Velocidad_Inicial, Tiempo_Transcurrido) return Distancia..
   --En el main probarla.

   declare
      Posicion_Inicial : Distancia;
      Vel_Ini : Velocidad_Inicial;
      Ace : Aceleracion;
      Tiempo_Transcurrido : Tiempo;
      Pos_Final : Calculo;
   begin
      Posicion_Inicial := 4.0;
      Vel_Ini := 5.5;
      Ace := 2.0;
      Tiempo_Transcurrido := 5.5;
      Pos_Final := Posicion_Final(Posicion_Inicial, Vel_Ini, Ace, Tiempo_Transcurrido);
      Put_Line("La posición final es " & Pos_Final'Image);
   end;

end Main;
