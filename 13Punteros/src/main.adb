with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Vectors;
with IOEnums;
with juego; use Juego;

procedure Main is

begin
   --  declare
   --     type Puntero_Integer is access Integer;
   --     PTR_A : Puntero_Integer := null;
   --     PTR_B : Puntero_Integer := null;
   --     PTR_C : Puntero_Integer := null;
   --  begin
   --     PTR_A := new Integer'(10);
   --     PTR_B := new Integer'(20);
   --     PTR_C := PTR_A;
   --     PTR_A.All := 40;
   --     --Put_Line(PTR_A'Image); --No tenemos el Image para los punteros.
   --     Put_Line(PTR_C.All'Image);
   --  end;




   --  declare
   --     --Declarar un tipo para un registro que sea un punto(x,y);
   --     type Coordenada is record
   --        X : Integer;
   --        Y : Integer;
   --     end record;
   --
   --     --Declarar un tipo que sea un puntero (access) a un punto;
   --     type Puntero_Coordenada is access Coordenada;
   --
   --     --Declarar un tipo de a arreglo de punteros de puntos..
   --     type Array_Puntero_Coordenada is array (Natural range <>) of Puntero_Coordenada;
   --
   --
   --     --Muchas_Coordenadas : Array_Puntero_Coordenada(0..5);
   --
   --     package Vector_Puntos is new Ada.Containers.Vectors
   --       (Index_Type => Natural, Element_Type => Puntero_Coordenada);
   --
   --
   --     Mi_Coordenada : Puntero_Coordenada;
   --     Muchas_Coordenadas : Vector_Puntos.Vector;
   --  begin
   --     --  --Mi_Coordenada := new Coordenada'(10,10);
   --     --  for I in Muchas_Coordenadas'Range loop
   --     --     Muchas_Coordenadas(I) := new Coordenada'(I + 3, I + 2);
   --     --  end loop;
   --     --
   --     --  for I in Muchas_Coordenadas'Range loop
   --     --     Mi_Coordenada := Muchas_Coordenadas(I);
   --     --     --  Set_Col(Positive_Count(Mi_Coordenada.All.X));
   --     --     --  Set_Col(Positive_Count(Mi_Coordenada.All.Y));
   --     --     Set_Col(Positive_Count(Mi_Coordenada.X));
   --     --     Set_Col(Positive_Count(Mi_Coordenada.Y));
   --     --     Put_Line("*");
   --     --  end loop;
   --
   --     for I in 1..10 loop
   --        Mi_Coordenada := new Coordenada'(I + 3, I + 3);
   --        Muchas_Coordenadas.Append(Mi_Coordenada);
   --     end loop;
   --
   --     for Coordenada_Actual of Muchas_Coordenadas loop
   --        Set_Col(Positive_Count(Coordenada_Actual.X));
   --        Set_Line(Positive_Count(Coordenada_Actual.Y));
   --        Put_Line("*");
   --     end loop;
   --  end;

   declare
      Profesion : Profesiones;
      package Profesiones_IO is new IOEnums(Enum_Type => Profesiones);
   begin
      Profesion := Profesiones_IO.Get_Enum;
   end;

end Main;
