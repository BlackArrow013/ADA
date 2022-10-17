with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Main is

begin
   --La computadora determina un número al azar entre 1 y 100.
   --La computadora da 5 oportunidades al usuario para adivinar dicho número.
   --El usuario arriesga un número y la computadora dice si dicho número es mayor o menor al número secreto.
   --Si adivinó antes de las 5 oportunidades, gana. Si no logra adivinar, pierde.
   declare
      G : Generator;
      Num_Secreto : Integer;
      Num_Adivinar : Integer;
      I : Integer := 1;
   begin
      Reset(G);
      Num_Secreto := Integer((Random(G) * 99.0) + 1.0);
      Put_Line("Introduzca el número y compruebe si adivina el número secreto:");
      while I < 6 loop
         I := I + 1;
         Get(Num_Adivinar);
         if Num_Adivinar = Num_Secreto then
            Put_Line("¡Acertaste! El número secreto era el" & Num_Secreto'Image);
            I := 100;
         elsif Num_Adivinar < Num_Secreto then
            Put_Line("El número secreto es mayor que" & Num_Adivinar'Image);
         else
            Put_Line("El número secreto es menor que" & Num_Adivinar'Image);
         end if;
      end loop;
      Put_Line(if I /= 100 then "¡No lo adivinaste! El número secreto era" & Num_Secreto'Image else "Enhorabuena, el juego ha concluido y eres el ganador");
   end;

end Main;
