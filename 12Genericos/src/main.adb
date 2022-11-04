with Ada.Text_IO; use Ada.Text_IO;
with Generic_Demo; use Generic_Demo;

procedure Main is

   Default_Max_Jugadores : constant Integer := 23;
   Default_Min_Jugadores : constant Integer := 11;

   type Equipos is (Real_Madrid, Barsa, Betis, Villarreal, Getafe, Atletico);
   type Cantidad_Jugadores is new Integer range Default_Min_Jugadores..Default_Max_Jugadores;
   type Sueldo is range 0..2**40;
   type Metros_Sobre_Segundos is delta 0.001 digits 4;

   C1 : Cantidad_Jugadores;
   C2 : Cantidad_Jugadores;

   Equipo_Favorito : Equipos;
   Equipo_Odiado : Equipos;

   NumeroA : Natural;
   NumeroB : Natural;

   Sueldo_Messi : Sueldo;
   Sueldo_Tesla : Sueldo;

   --Swap de cantidad
   --  procedure Swap_Jugadores(Can1 : in out Cantidad_Jugadores; Can2 : in out Cantidad_Jugadores) is
   --     Aux : Cantidad_Jugadores;
   --  begin
   --     Aux := Can1;
   --     Can1 := Can2;
   --     Can2 := Aux;
   --  end;
   --
   --  procedure Swap_Equipos(Team1 : in out Equipos; Team2 : in out Equipos) is
   --     Aux : Equipos;
   --  begin
   --     Aux := Team1;
   --     Team1 := Team2;
   --     Team2 := Aux;
   --  end;
   --
   --  procedure Swap_Numeros (Entrada1: in out Integer; Entrada2: in out Integer) is
   --     Aux:Integer;
   --  begin
   --     Aux := Entrada1;
   --     Entrada1 := Entrada2;
   --     Entrada2 := Aux;
   --  end;

   --  generic type T is private; --private significa cualquier tipo
   --  procedure Generic_Swap(Value1 : in out T; Value2 : in out T); --Primero lo defino
   --  procedure Generic_Swap(Value1 : in out T; Value2 : in out T); --Luego lo declaro

   procedure Swap is new Generic_Swap(T => Cantidad_Jugadores);
   procedure Swap is new Generic_Swap(T => Equipos);
   procedure Swap is new Generic_Swap(T => Natural);
   procedure Swap is new Generic_Swap(T => Sueldo);

begin
   C1 := 23;
   C2 := 15;
   Put_Line("Antes (" & C1'Image & "," & C2'Image & ")");
   Swap(C1, C2);
   Put_Line("Ahora (" & C1'Image & "," & C2'Image & ")");

   Equipo_Favorito := Barsa;
   Equipo_Odiado := Real_Madrid;
   Put_Line("Equipo favorito:" & Equipo_Favorito'Image & ", Equipo Odiado:" & Equipo_Odiado'Image);
   Swap(Equipo_Favorito, Equipo_Odiado);
   Put_Line("Ahora equipo favorito:" & Equipo_Favorito'Image & ", y ahora equipo odiado:" & Equipo_Odiado'Image);

   NumeroA := 10;
   NumeroB := 20;
   Put_Line("Número A:" & NumeroA'Image & ", Número B:" & NumeroB'Image);
   Swap(NumeroA, NumeroB);
   Put_Line("Ahora número A:" & NumeroA'Image & ", y ahora Número B:" & NumeroB'Image);

   Sueldo_Messi := 1000000000;
   Sueldo_Tesla := 2000000000;
   Put_Line("Sueldo Messi antes:" & Sueldo_Messi'Image & ", Sueldo Tesla antes:" & Sueldo_Tesla'Image);
   Swap(Sueldo_Messi, Sueldo_Tesla);
   Put_Line("Sueldo Messi ahora:" & Sueldo_Messi'Image & ", ySueldo Tesla ahora:" & Sueldo_Tesla'Image);

end Main;
