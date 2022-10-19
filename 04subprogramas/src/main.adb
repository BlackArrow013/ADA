with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is


   function Sumar(N1 : Integer; N2 : Integer) return Integer is
   begin
      return N1 + N2;
   end;

   function Exponente(Base : Integer; Exp : Integer := 2) return Float is
      Resultado : Float;
   begin
      if (Exp = 0) then
         return 1.0;
      end if;

      if (Exp = 1) then
         return Float(Base);
      end if;

      Resultado := Float(Base);
      For I in 2..Exp loop
         Resultado := Resultado * Float(Base);
      end loop;

      if (Exp < 0) then
         return 1.0 / Resultado;
      end if;

      return Resultado;
   end;

   procedure Show_Float(Value : Float) is
      use Ada.Float_Text_IO;
   begin
      Ada.Float_Text_IO.Put(Value, Exp => 0, Fore => 0);
      Ada.Text_IO.Put_Line("");
   end;

   procedure Put_Line(Value : Float) renames Show_Float; --Ada permite renombrar métodos.

   procedure Swap_Integers(Param1 : in out Integer; Param2 : in out Integer) is
      Aux : Integer;
   begin
      Aux := Param1;
      Param1 := Param2;
      Param2 := Aux;
   end;

   function Resta
     (Num1 : in Integer;
      Num2 : in Integer;
      Negativo : out Boolean) return Integer is
      Resultado : Integer;
   begin
      Resultado := Num1 - Num2;
      Negativo := (Resultado < 0);
      return Resultado;
   end;

   function Resta(Num1 : in Integer; Num2 : in Integer) return Integer is
   begin
      return Num1 - Num2;
   end;

   procedure Mayor_Menor(Num1 : in Integer; Num2 : in Integer; Iguales : out Boolean) is
      Mayor : Integer;
      Menor : Integer;
   begin
      Iguales := False;
      if Num1 > Num2 then
         Mayor := Num1;
         Menor := Num2;
      elsif Num1 < Num2 then
         Mayor := Num2;
         Menor := Num1;
      else
         Mayor := Num2;
         Menor := Num1;
         Iguales := True;
      end if;

      Put_Line(if Iguales then "Los números son iguales" else "El " & Mayor'Image & " es mayor que el " & Menor'Image);
   end Mayor_Menor;

   procedure Mayor_Menor(
                         Num1 : in Integer;
                         Num2 : in Integer;
                         Mayor : out Integer;
                         Menor : out Integer) is
      Valor1 : Integer;
      Valor2 : Integer;
   begin
      Mayor := (if (Num1 > Num2) then Valor1 else Valor2);
      Menor := (if (Num1 < Num2) then Valor1 else Valor2);
   end Mayor_Menor;


   --  Primer_Valor : Integer;
   --  Segundo_Valor : Integer;
   --  Resultado : Integer;

begin
   --Invocando una función
   --  Primer_Valor := 6;
   --  Segundo_Valor := 9;
   --  Resultado := Sumar(Primer_Valor, Segundo_Valor);
   --  Put_Line("El resultado de sumar" &
   --             Primer_Valor'Image & " y" &
   --             Segundo_Valor'Image & " es" & Resultado'Image);

   --Invocando una función con parámetros con nombre (name parameters).
   --  Primer_Valor := 16;
   --  Segundo_Valor := 39;
   --  Resultado := Sumar(N2 => Primer_Valor, N1 => Segundo_Valor);
   --  Put_Line("El resultado de sumar" &
   --             Primer_Valor'Image & " y" &
   --             Segundo_Valor'Image & " es" & Resultado'Image);

   --  declare
   --     Res : Float;
   --  begin
   --     --Con el parámetro por defecto;
   --     Res := Exponente(2);
   --     --  Put(Res, Exp => 0);
   --     --  Put_Line("");
   --     Show_Float(Res);
   --     --Sin el parámetro por defecto;
   --     Res := Exponente(2, 3);
   --     --  Put(Res, Exp => 0);
   --     Show_Float(Res);
   --  end;

   --  declare
   --     A : Integer := 10;
   --     B : Integer := 20;
   --  begin
   --     Put_Line("Antes " & A'Image & " " & B'Image);
   --     Swap_Integers(A, B);
   --     Put_Line("Después " & A'Image & " " & B'Image);
   --  end;

   --  declare
   --     A : Integer := 10;
   --     B : Integer := 20;
   --     Resultado : Integer;
   --     Es_Negativo : Boolean;
   --  begin
   --     --Resta
   --     Put_Line(Resta(40,30)'Image);
   --     --Sobrecarga
   --     Resultado := Resta(A,B,Es_Negativo);
   --     Put_Line("Resultado " &
   --                Resultado'Image &
   --              (if(Es_Negativo) then " es negativo " else " es positivo"));
   --  end;

   --Ejercicio
   --Realizar un procedimiento MayorMenor
   --Que reciba dos números y devuelva dos variables una con el mayor y otra con el menor
   --Este subprograma tiene 4 parámetros
   --  declare
   --     A : Integer := 10;
   --     B : Integer := 15;
   --     Iguales : Boolean;
   --  begin
   --     Mayor_Menor(A,B,Iguales);
   --  end;

   declare
      Supuesto_Mayor : Integer := 9;
      Supuesto_Menor : Integer := 19;
   begin
      Mayor_Menor(Supuesto_Menor,
                  Supuesto_Mayor,
                  Mayor => Supuesto_Mayor,
                  Menor => Supuesto_Menor);
      Put_Line("Mayor" & Supuesto_Mayor'Image);
      Put_Line("Menor" & Supuesto_Menor'Image);
   end;

end Main;
