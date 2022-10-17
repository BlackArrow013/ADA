with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Main is

begin
   --La computadora determina un n�mero al azar entre 1 y 100.
   --La computadora da 5 oportunidades al usuario para adivinar dicho n�mero.
   --El usuario arriesga un n�mero y la computadora dice si dicho n�mero es mayor o menor al n�mero secreto.
   --Si adivin� antes de las 5 oportunidades, gana. Si no logra adivinar, pierde.
   declare
      G : Generator;
      Num_Secreto : Integer;
      Num_Adivinar : Integer;
      I : Integer := 1;
   begin
      Reset(G);
      Num_Secreto := Integer((Random(G) * 99.0) + 1.0);
      Put_Line("Introduzca el n�mero y compruebe si adivina el n�mero secreto:");
      while I < 6 loop
         I := I + 1;
         Get(Num_Adivinar);
         if Num_Adivinar = Num_Secreto then
            Put_Line("�Acertaste! El n�mero secreto era el" & Num_Secreto'Image);
            I := 100;
         elsif Num_Adivinar < Num_Secreto then
            Put_Line("El n�mero secreto es mayor que" & Num_Adivinar'Image);
         else
            Put_Line("El n�mero secreto es menor que" & Num_Adivinar'Image);
         end if;
      end loop;
      Put_Line(if I /= 100 then "�No lo adivinaste! El n�mero secreto era" & Num_Secreto'Image else "Enhorabuena, el juego ha concluido y eres el ganador");
   end;

end Main;
