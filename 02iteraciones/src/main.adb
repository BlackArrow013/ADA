with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
   --N : Integer;
begin
   Put_line("Bienvenido a la clase dos");
   --  --Ejemplo de for : Cuento hasta 10
   --  for I in 1..10 loop
   --     Put_Line(I'Image);
   --  end loop;

   --Jugando---
   --  N := 10;
   --  Put_Line(N'Image);
   --  Put_Line(Integer'Succ(N)'Image);
   --  Put_Line(Integer'Pred(N)'Image);
   --  If (N mod 2 = 0) then
   --     Put_Line("Es par");

   --Que me liste los números pares entre 1 y 20
   --  for I in 1..20 loop
   --     if I mod 2 = 0 then
   --        Put_Line(I'Image);
   --     end if;
   --  end loop;

   --La sumatoria de valores entre 1 y 15 y que la muestre
   --  for I in 1 .. 15 loop
   --     N :=  N + I;
   --  end loop;
   --  Put_Line(N'Image);

   --  declare
   --     Sumatoria : Integer := 0;
   --  begin
   --     for I in 1..15 loop
   --        Sumatoria := Sumatoria + I;
   --     end loop;
   --     Put_Line("La sumatoria entre 1 y 15 es " & Sumatoria'Image);
   --  end

   --El promedio de 10 valores ingresados por el usuario
   declare
      Sumatoria : Integer := 0;
      ValorIngresado : Integer := 0;
      Promedio : Float;
   begin
      --Promedio := Float(Sumatoria); --Debería hacer un casteo
      Put_Line("Ingrese 10 valores:");
      for I in 1..10 loop
         Get(ValorIngresado);
         Sumatoria := Sumatoria + ValorIngresado;
      end loop;
      Promedio := Float(Sumatoria) / 10.0;
      Put_Line("El promedio es " & Promedio'Image);
   end;
end Main;
