with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Main is
   --  type Indice_Diez_Numeros is range 1..10;
   --  type Arreglo_Diez_Numeros is array(Indice_Diez_Numeros) of Integer;
   --
   --  --  Diez_Numeros : Arreglo_Diez_Numeros;
   --  G : Generator;

begin
   --  --Cargo el arreglo de 10 números
   --  Diez_Numeros := (1,2,3,4,5,6,7,8,9,10);
   --
   --  --  for I in Indice_Diez_Numeros loop
   --  --     Diez_Numeros(I) := Integer(Random(G) * Float(Integer'Last));
   --  --  end loop;
   --
   --  for I in Diez_Numeros'First..Diez_Numeros'Last loop
   --     Put_Line(Diez_Numeros(I)'Image);
   --  end loop;

   --  declare
   --     type Dia is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   --     Dia_En_Ingles : array(Dia) of Unbounded_String :=
   --       (To_Unbounded_String("Monday"), To_Unbounded_String("Tuesday"),
   --        To_Unbounded_String("Wednesday"), To_Unbounded_String("Thursday"),
   --        To_Unbounded_String("Friday"), To_Unbounded_String("Saturday"),
   --        To_Unbounded_String("Sunday"));
   --
   --     --  Un_Dia : Dia;
   --  begin
   --     --  Un_Dia := Miercoles;
   --     --  Put_Line(To_String(Dia_En_Ingles(Un_Dia)));
   --
   --     for Un_Dia in Dia_En_Ingles'Range loop
   --        Put_Line(To_String(Dia_En_Ingles(Un_Dia)));
   --     end loop;
   --  end;

   --  declare
   --     --Declarar un typo para un arreglo de 5 numeros
   --     --Declarar una función que devuelve un arreglo del tipo anterior con numeros al azar.
   --     type Indice_Cinco_Numeros is range 1..5;
   --     type Arreglo_Cinco_Numeros is array(Indice_Cinco_Numeros) of Integer;
   --
   --
   --
   --     function Arreglo_Al_Azar return Arreglo_Cinco_Numeros is
   --        G : Generator;
   --        Result : Arreglo_Cinco_Numeros;
   --     begin
   --        for I in Indice_Cinco_Numeros loop
   --           Result(I) := Integer(Random(G) * Float(Integer'Last));
   --        end loop;
   --
   --        return Result;
   --     end;
   --
   --     Cinco_Numeros : Arreglo_Cinco_Numeros := Arreglo_Al_Azar;
   --
   --  begin
   --     for I in Cinco_Numeros'Range loop
   --        Put_Line(Cinco_Numeros(I)'Image);
   --     end loop;
   --
   --  end;

   --  declare
   --     type Array_Numeros is array (Integer range <>) of Positive;
   --     Diez_Numeros : Array_Numeros(1..10);
   --  begin
   --     --Diez_Numeros := (1,2,3,4,5,6,7,8,9,10);
   --     Diez_Numeros := (1=>1, 5=>5, 7=>7, others=>100);
   --     Put_Line("El Array tiene" & Diez_Numeros'Length'Image & " elementos");
   --     for I in Diez_Numeros'Range loop
   --        Put_Line(Diez_Numeros(I)'Image);
   --     end loop;
   --  end;

   declare
      --Declarar un tipo que sea un arreglo de números
      type Array_Numeros is array(Integer range <>) of Integer;
      --Declarar una función que reciba un arreglo de números y devuelva el máximo
      function Maximo_Array(Array_N : Array_Numeros) return Integer is
         Num_Maximo : Integer := 0;
      begin
         for I in Array_N'Range loop
            if Array_N(I) > Num_Maximo then
               Num_Maximo := Array_N(I);
            end if;
         end loop;
         return Num_Maximo;
      end;
      Longitud_Ingresada : Integer;
   begin
      Put_Line("¿Cuántos números desea ingresar?");
      Longitud_Ingresada := Integer'Value(Get_Line);

      declare
         Numeros : Array_Numeros(1..Longitud_Ingresada);
         Valor_Retorno : Integer;
      begin
         for I in Numeros'Range loop
            Put_Line("Ingrese el número " & I'Image);
            Numeros(I) := Integer'Value(Get_Line);
         end loop;

         Valor_Retorno := Maximo_Array(Numeros);
         Put_Line("El número más alto es" & Valor_Retorno'Image);
      end;
   end;

end Main;
