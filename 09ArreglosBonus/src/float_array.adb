with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package body Float_Array is

   --Declarar una función que recibe un número N y me devuelve un arreglo de números al azar.
   function Arreglo_Numeros_Aleatorios(Num_N : in Integer) return Arreglo_Abierto is      
      G : Generator;      
      Result : Arreglo_Abierto(1..Num_N);      
   begin      
      for I in Result'Range loop         
         Result(I) := Float((Random(G) * 10.0) + 1.0);         
      end loop;      
      return Result;      
   end; 
   
   --Declarar una función que recibe un arreglo de ese tipo y me devuelve la sumatoria.   
   function Sumatoria_Arreglo(Arreglo_Sum : in Arreglo_Abierto) return Float is      
      Result : Float := 0.0;      
   begin      
      for I in Arreglo_Sum'Range loop         
         Result := Result + Arreglo_Sum(I);         
      end loop;      
      return Result;       
   end;         
   
   --Declarar una función que recibe un arreglo de ese tipo y me devuelve el promedio.   
   function Promedio_Arreglo(Arreglo_Prom : in Arreglo_Abierto) return Float is       
      Result : Float := 0.0;      
      Suma : Float;      
   begin      
      Suma := Sumatoria_Arreglo(Arreglo_Prom);      
      Result := (Suma / Float(Arreglo_Prom'Last));      
      return Result;      
   end;
   
   --Declarar un procedimiento que muestra un arreglo por pantalla.   
   procedure Datos_Arreglo(Arreglo_Dat : in Arreglo_Abierto) is      
   begin      
      for I in Arreglo_Dat'Range loop         
         Put_Line("El valor para el dato del arreglo" & I'Image & " es" & Arreglo_Dat(I)'Image);         
      end loop;      
   end;   
      
   --Una función que reciba un array y un valor.   
   --Devuelve otro array con los valores mayores del parámetro.   
   function Mayores(Arreglo_Dat : in Arreglo_Abierto; Dato : in Float) return Arreglo_Abierto is      
      Aux : Arreglo_Abierto := Arreglo_Dat;      
      Indice : Integer := Arreglo_Dat'First;         
   begin      
      for I in Arreglo_Dat'Range loop         
         if Arreglo_Dat(I) > Dato then            
            Aux(Indice) := Arreglo_Dat(I);            
            Indice := Indice + 1;            
         end if;         
      end loop;      
      declare         
         Result : Arreglo_Abierto(Arreglo_Dat'First..Indice-1); --Me puede quedar vacio         
      begin         
         Result := Arreglo_Dat(Arreglo_Dat'First..Indice-1);--Slice         
         return Result;         
      end;      
   end Mayores;
end Float_Array;
