package body Velocidad_Final is

   function Posicion_Final
     (Posicion_Inicial : in Distancia, Vel_Ini : in Velocidad_Inicial, Ace : in Aceleracion, Tiempo_Transcurrido : in Tiempo) 
      return Calculo is
      Pos_Final : Calculo;      
   begin
      -- Vf = X0 + (Vinicial * t) + (1/2 * a * t²)
      Pos_Final := Posicion_Inicial + (Vel_Ini * Tiempo_Transcurrido) + ((Ace * Tiempo_Transcurrido * Tiempo_Transcurrido) / 2);
      return Pos_Final;      
   end;
   
end Velocidad_Final;
