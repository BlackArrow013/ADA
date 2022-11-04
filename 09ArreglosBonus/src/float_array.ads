package Float_Array is

--Declarar un tipo de arreglo de Float (abierto/unconstrained);      
   type Arreglo_Abierto is array(Positive range <>) of Float;
   
   --Declarar una función que recibe un número N y me devuelve un arreglo de números al azar.   
      function Arreglo_Numeros_Aleatorios(Num_N : in Integer) return Arreglo_Abierto;
   
   --Declarar una función que recibe un arreglo de ese tipo y me devuelve la sumatoria.   
   function Sumatoria_Arreglo(Arreglo_Sum : in Arreglo_Abierto) return Float;
   
   --Declarar una función que recibe un arreglo de ese tipo y me devuelve el promedio.   
   function Promedio_Arreglo(Arreglo_Prom : in Arreglo_Abierto) return Float;  
   
   --Declarar un procedimiento que muestra un arreglo por pantalla.   
   procedure Datos_Arreglo(Arreglo_Dat : in Arreglo_Abierto);      
      
   --Una función que reciba un array y un valor.      
   --Devuelve otro array con los valores mayores del parámetro.      
   function Mayores(Arreglo_Dat : in Arreglo_Abierto; Dato : in Float) return Arreglo_Abierto;  

end Float_Array;
