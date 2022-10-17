with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Main is
   --  Sumatoria : Integer := 0;
   --  Entrada_Datos : Integer;
begin
   --Calcule la sumatoria de valores hasta que el usuario ingrese un 0.
   --  Put_Line("Ingrese valores. Un 0 finaliza la carga");
   --  Put_Line("Se calculará la sumatoria");
   --  loop
   --     Get(Entrada_Datos);
   --     exit when (Entrada_datos = 0);
   --     Sumatoria := Sumatoria + Entrada_Datos;
   --  end loop;
   --  Put_Line("La sumatoria es " & Sumatoria'Image);

   --Mismo ejemplo con el while
   --  Get(Entrada_Datos);
   --  while Entrada_Datos /= 0 loop
   --     Sumatoria := Sumatoria + Entrada_Datos;
   --     Get(Entrada_Datos);
   --  end loop;
   --  Put_Line("La sumatoria es " & Sumatoria'Image);

   --  declare
   --     Edad : Integer;
   --  begin
   --     Put_Line("Ingrese su edad:");
   --     Get(Edad);
   --     case Edad is
   --        when 0|1|2 =>
   --           Put_Line("Es recién nacido");
   --        when 3..9 =>
   --           Put_Line("Es un infante");
   --        when 10..18 =>
   --           Put_Line("Es un joven");
   --        when 19..49 =>
   --           Put_Line("Es un adulto");
   --        when 50 =>
   --           Put_Line("Medio siglo de vida");
   --        when others =>
   --           Put_Line("Mayor de 50");
   --     end case;
   --  end;

   --Introduciendo a los String;
   --  declare
   --     S : String(1..7);
   --  begin
   --     S := "Esteban";
   --  end;

   --Otro ejemplo de Strings
   --Forma implícita
   --  Put_Line("Ingrese su nombre");
   --  declare
   --     Nombre : String := Get_Line;
   --  begin
   --     Put_Line("Hola " & Nombre);
   --  end;

   --Un programa que pregunte los valores positivos hasta que ingrese un 0.
   --Utilizar un bloque declare.
   --El programa me muestra el máximo.
   --  declare
   --     Entrada_Datos : Integer;
   --     Valor_Maximo : Integer := 0;
   --  begin
   --     Put_Line("Ingrese valores positivos. Si quiere finalizar el programa ingrese un 0:");
   --     Get(Entrada_Datos);
   --     if Entrada_Datos = 0 then
   --        Put_Line("El valor máximo es cero");
   --     else
   --        Valor_Maximo := Entrada_Datos;
   --        while Entrada_Datos /= 0 loop
   --           Get(Entrada_Datos);
   --           if Entrada_Datos > Valor_Maximo then
   --              Valor_Maximo := Entrada_Datos;
   --           end if;
   --        end loop;
   --     end if;
   --     Put_Line("El valor máximo es " & Valor_Maximo'Image);
   --  end;

   --Operador ternario
   --  declare
   --     Edad : Integer;
   --  begin
   --     Get(Edad);
   --     Put_Line( if (Edad=>18) then "Es mayor de edad" else "Es menor de edad");
   --  end;
   --  declare
   --     Edad : Integer;
   --  begin
   --     Get(Edad);
   --     Put_Line( case Edad is
   --                  when 0..17 => "Es menor",
   --                  when 18..60 => "Es mayor",
   --                  when others => "Es senior");
   --  end;

   --Que el usuario ingrese numeros
   --Calcular el total de numeros ingresados, cantidad de numeros pares, cantidad impares
   --Utilizar una expresión if
   --  declare
   --     Num_Ingresados : Integer := 0;
   --     Num_Pares : Integer := 0;
   --     Num_Impares : Integer := 0;
   --     Entrada_Datos : Integer;
   --  begin
   --     Put_Line("Ingrese números. Para finalizar ingrese el 0:");
   --     Get(Entrada_Datos);
   --     if Entrada_Datos = 0 then
   --        Put_Line("Programa finalizado sin ejecutarlo.");
   --     else
   --        while Entrada_Datos /= 0 loop
   --           Num_Ingresados := Num_Ingresados + 1;
   --           if (Entrada_Datos mod 2 = 0) then
   --              Num_Pares := Num_Pares + 1;
   --           else
   --              Num_Impares := Num_Impares + 1;
   --           end if;
   --           Put_Line("Ingrese un nuevo numero");
   --           Get(Entrada_Datos);
   --        end loop;
   --     end if;
   --     Put_Line("Números introducidos: " & Num_Ingresados'Image);
   --     Put_Line("Números pares: " & Num_Pares'Image);
   --     Put_Line("Números impares: " & Num_Impares'Image);
   --  end;

   --  declare
   --     G : Generator;
   --     Num_Random : Uniformly_Distributed;
   --  begin
   --     Reset(G);
   --     for I in 1..10 loop
   --        Num_Random := Random(G);
   --        Put(Num_Random, 0, 2, 0);
   --        Put_Line("");
   --     end loop;
   --  end;

   --Generar numeros al azar entre 1 y 10.
   declare
      G : Generator;
      Numero_Al_Azar : Integer;
   begin
      Reset(G);
      for I in 1..20 loop
         Numero_Al_Azar := Integer((Random(G) * 9.0) + 1.0);
         Put_Line(Numero_Al_Azar'Image);
      end loop;

   end;


end Main;
