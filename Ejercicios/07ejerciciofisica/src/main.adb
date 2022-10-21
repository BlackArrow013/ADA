with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Text_IO;
with Velocidad_Final; use Velocidad_Final;

procedure Main is

begin
   --Crear una librer�a que se llama f�sica.
   --Definir los siguientes tipos de datos en esa librer�a.
   --Distancia.
   --Velocidad.
   --Tiempo.
   --Aceleraci�n.
   --Agregar un m�todo que calcula la velocidad de un m�vil despu�s de x tiempo.
   -- Vf = X0 + Vinicial * t + 1/2 * a * t�
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
      Put_Line("La posici�n final es " & Pos_Final'Image);
   end;

end Main;
