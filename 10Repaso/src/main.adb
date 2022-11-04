with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Main is

begin
   --  declare
   --     type Nota is range 0..10 with Default_Value => 7;
   --     type Array_Numeros is array(Positive range <>) of Integer with Default_Component_Value => 10;
   --     --Muchos_Numeros : Array_Numeros(1..15);
   --     Array_Vacio : Array_Numeros(2..1);
   --     Mi_Nota : Nota;
   --     --Muchos_Numeros : Array_Numeros := (1,3,4,5,6,7); --Inicializando array.
   --     Muchos_Numeros : Array_Numeros(1..15) := (1 => 2, 2|3|4 => 7, 5 => <>, others => 5); --Inicializando array con Agregate.
   --     Pedacito : Array_Numeros := Muchos_Numeros(1..4); --Array Slices
   --     Muchos_Mas_Numeros : Array_Numeros := Muchos_Numeros & Pedacito;
   --  begin
   --     for I in Muchos_Mas_Numeros'Range loop
   --        --Put_Line(Muchos_Numeros(I)'Image);
   --        --Put_Line(Pedacito(I)'Image);
   --        Put_Line(Muchos_Mas_Numeros(I)'Image);
   --     end loop;
   --     Put_Line(Mi_Nota'Image);
   --     Put_Line("El array vacío tiene longitud" & Array_Vacio'Length'Image);
   --  end;

   --  declare
   --     type Componente_ADN is (A, G, C, T);
   --     --  Componente_ADN_As_String : array (Componente_ADN) of Unbounded_String :=
   --     --    (To_Unbounded_String("Adenina"),
   --     --     To_Unbounded_String("Guanina"),
   --     --     To_Unbounded_String("Citosina"),
   --     --     To_Unbounded_String("Timina"));
   --
   --
   --     function To_String(Enum: Componente_ADN) return String is
   --     begin
   --        return
   --          (Case Enum is
   --              when A => "Adenina",
   --              when G => "Guanina",
   --              when C => "Citosina",
   --              when T => "Timina");
   --     end;
   --
   --     Componente : Componente_ADN := A;
   --
   --  begin
   --     --Put_Line(To_String(Componente_ADN_As_String(Componente)));
   --     Put_Line(To_String(Componente));
   --end;

   declare

      type Fecha is record
         Dia : Integer range 1..31;
         Mes : Integer range 1..12;
         Año : Integer range 1900..3000;
      end record;

      Nacimiento : Fecha (20,9,1980); --Inicialización posicional
      Nacimiento : Fecha (Dia => 20, Mes => 9, Año => 1980);

   begin

      Nacimiento.Dia := 20;

   end;

end Main;
