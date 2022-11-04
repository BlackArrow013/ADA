package Velocidad_Final is

   type Calculo is new Float;
   subtype Distancia is Calculo;
   subtype Velocidad_Inicial is Calculo;
   subtype Tiempo is Calculo;
   subtype Aceleracion is Calculo;
   
   function Posicion_Final
     (Posicion_Inicial : Distancia; Vel_Ini : Velocidad_Inicial; Ace : Aceleracion; Tiempo_Transcurrido : Tiempo) 
      return Calculo;

end Velocidad_Final;
