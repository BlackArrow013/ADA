with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Float_Array; use Float_Array;

procedure Main is
   --  type Dinero is digits 2;
   --  --Empieza en la posición 1.
   --  type Montos is array  (Positive range <>) of Dinero;
   --  --Empieza en la posición 0.
   --  --type Montos is array (Natural range <>) of Dinero;
   --     --Empieza en la posición Integer'First.
   --  --type Montos is array (Integer range <>) of Dinero;
   --
   --  --Ventas : Montos(1..5);
   --  Ventas : Montos := (10.0, 2.3, 6.7);
begin
   --  declare
   --     --type Montos is array (Integer range <>) of Float;
   --     type Dinero is digits 2;
   --     --Empieza en la posicion 1:
   --     type Montos is array (Positive range <>) of Dinero;
   --     --Empieza en la posicion 0:
   --     type Array_Natural is array (Natural range <>) of Dinero;
   --     --Empieza en la posicion Integer'First
   --     type Array_Integer is array (Integer range <>) of Dinero;
   --     --Inicializaciones
   --     --Ventas : Montos(1..5);
   --     Ventas : Montos := (10.0, 2.3, 6.7);
   --     Ventas_Natural_Range : Array_Natural := (4.5,3.4);
   --     Ventas_Integer_Range : Array_Integer := (6.7, 2.3);
   --  begin
   --     --  Insert code here.
   --     --Ventas(0) := 2.3; --Porque da error?
   --     Put_Line("Primera Posicion (Positive range <>) " & Ventas'First'Image);
   --     Put_Line("Primera Posicion (Natural range <>) " & Ventas_Natural_Range'First'Image);
   --     Put_Line("Primera Posicion (Integer range <>) " & Ventas_Integer_Range'First'Image);
   --  end;

   declare
      --  --Declarar un tipo de arreglo de Float (abierto/unconstrained);
      --  type Arreglo_Abierto is array(Positive range <>) of Float;
      --  --Declarar una función que recibe un número N y me devuelve un arreglo de números al azar.
      --  function Arreglo_Numeros_Aleatorios(Num_N : in Integer) return Arreglo_Abierto is
      --     G : Generator;
      --     Result : Arreglo_Abierto(1..Num_N);
      --  begin
      --     for I in Result'Range loop
      --        Result(I) := Float((Random(G) * 10.0) + 1.0);
      --     end loop;
      --     return Result;
      --  end;
      --  --Declarar una función que recibe un arreglo de ese tipo y me devuelve la sumatoria.
      --  function Sumatoria_Arreglo(Arreglo_Sum : in Arreglo_Abierto) return Float is
      --     Result : Float := 0.0;
      --  begin
      --     for I in Arreglo_Sum'Range loop
      --        Result := Result + Arreglo_Sum(I);
      --     end loop;
      --     return Result;
      --  end;
      --  --Declarar una función que recibe un arreglo de ese tipo y me devuelve el promedio.
      --  function Promedio_Arreglo(Arreglo_Prom : in Arreglo_Abierto) return Float is
      --     Result : Float := 0.0;
      --     Suma : Float;
      --  begin
      --     Suma := Sumatoria_Arreglo(Arreglo_Prom);
      --     Result := (Suma / Float(Arreglo_Prom'Last));
      --     return Result;
      --  end;
      --  --Declarar un procedimiento que muestra un arreglo por pantalla.
      --  procedure Datos_Arreglo(Arreglo_Dat : in Arreglo_Abierto) is
      --  begin
      --     for I in Arreglo_Dat'Range loop
      --        Put_Line("El valor para el dato del arreglo" & I'Image & " es" & Arreglo_Dat(I)'Image);
      --     end loop;
      --  end;
      --
      --  --Una función que reciba un array y un valor.
      --  --Devuelve otro array con los valores mayores del parámetro.
      --  function Mayores(Arreglo_Dat : in Arreglo_Abierto; Dato : in Float) return Arreglo_Abierto is
      --     Aux : Arreglo_Abierto := Arreglo_Dat;
      --     Indice : Integer := Arreglo_Dat'First;
      --
      --  begin
      --     for I in Arreglo_Dat'Range loop
      --        if Arreglo_Dat(I) > Dato then
      --           Aux(Indice) := Arreglo_Dat(I);
      --           Indice := Indice + 1;
      --        end if;
      --     end loop;
      --     declare
      --        Result : Arreglo_Abierto(Arreglo_Dat'First..Indice-1); --Me puede quedar vacio
      --     begin
      --        Result := Arreglo_Dat(Arreglo_Dat'First..Indice-1);--Slice
      --        return Result;
      --     end;
      --  end Mayores;

      Limite_Rango : Integer;
      Sum_Arreglo : Float;
      Prom_Arreglo : Float;
      --Arreglo_A_Utilizar : Arreglo_Abierto;
   begin
      Put_Line("Introduce un número para indicar el rango del arreglo: ");
      Limite_Rango := Integer'Value(Get_Line);

      declare
         Arreglo_A_Utilizar : Arreglo_Abierto := Arreglo_Numeros_Aleatorios(Limite_Rango);
      begin
         Datos_Arreglo(Arreglo_A_Utilizar);

         Sum_Arreglo := Sumatoria_Arreglo(Arreglo_A_Utilizar);

         Put_Line("La sumatoria de los valores del arreglo es:" & Sum_Arreglo'Image);

         Prom_Arreglo := Promedio_Arreglo(Arreglo_A_Utilizar);

         Put_Line("El promedio de los valores del arreglo es:" & Prom_Arreglo'Image);
      end;

   end;

end Main;
