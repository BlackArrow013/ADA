with selva; use selva;
with Ada.Text_IO; use Ada.Text_IO;
with IO; use IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Main is
   --  Leon : Animal;
   --  Jirafa : Animal;

   --Declaro un vector de animales.
   type Array_Animales is array(Positive range <>) of Animal;

begin
   --  Leon := Create_Leon("Alex");
   --  Jirafa := Create_Jirafa("Melman");
   --  Put_Line("Hola, soy " & Leon.Get_Nombre);
   --  Leon.Hablar;
   --  Put_Line("Hola, soy " & Jirafa.Get_Nombre);
   --  Jirafa.Hablar;

   declare
      --Pregunte al usuario cuántos animales quiere e inicialice un arreglo de animales
      Num_Animales : Integer;

   begin
      Num_Animales := Get_Integer("¿Cuántos animales quiere introducir?");

      declare
         Animales : Array_Animales(1..Num_Animales) := (others => null);
         G : Generator;
         Azar : Uniformly_Distributed;
         Un_Animal : Animal;
      begin
         Reset(G);
         for Index in Animales'Range loop
            Azar := Random(G);
            --Si el número es < 0.3 que agregue un león.
            --Si el número es > 0.7 que agregue una jirafa.
            --Sino un pato
            if Azar< 0.3 then
               Animales(index) := Create_Leon("Alex");
            elsif Azar> 0.7 then
               Animales(index) := Create_Jirafa("Melman");
            else
               Animales(index) := Create_Pato("Tetoncito");
            end if;
         end loop;

         --Recorrer el array de animales con un for of.
         --Hacer que cada animal hable.
         for Criatura of Animales loop
            Criatura.Hablar;
         end loop;
      end;
   end;
end Main;
