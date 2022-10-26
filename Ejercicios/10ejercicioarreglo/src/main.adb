with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with IO; use IO;

--Crear un tipo para un registro de personas que tengan:
--Nombre
--Apellido
--Edad

--Crear un tipo para un array unconstrained de personas
--Preguntar al usuario cuantas personas ingresar
--Leer las personas una a una de forma segura y agregarla al array
--Podemos utilizar el paquete de lectura segura de datos que hicimos
--Mostrar la lista de forma bonita
--Poner los tipos y sus subprogramas en otro paquete.--Tienen 25 mintos!
--Subirlo a Git

procedure Main is

begin
   declare
      type Datos_Persona is record
         Nombre : String;
         Apellido : String;
         Edad : Integer range 0..150;
      end record;

      type Personas is array (Natural range <>) of Datos_Persona;

      Numero_Personas : Integer := 0;
      Error_Message : String;
      N_Personas : Personas;

   begin
      Put_Line("Ingrese cuántas personas desea ingresar:");
      Numero_Personas := Get_Integer(ErrorMessage);

      for I in I < Numero_Personas loop
         declare
            Nombre : String;
            Apellido : String;
            Edad : Integer;
            Persona : Datos_Persona;
         begin
            Put_Line("Introduce el nombre de la persona número" & I'Image);
            Nombre := Get_NotEmpty_Line(ErrorMessage);
            Put_Line("Introduce el apellido de la persona número" & I'Image);
            Apellido := Get_NotEmpty_Line(ErrorMessage);
            Put_Line("Introduce la edad de la persona número" & I'Image);
            Edad := Get_Integer(ErrorMessage);

            Persona(Nombre, Apellido, Edad);

            N_Personas(I => Persona);
         end;

      end loop;

      Put_Line("Hay datos de" & N_Personas'Range'Image & " personas");

      for I in N_Personas'Range loop
               Put_Line("La persona número" & I'Image & " se llama "
                 & N_Personas(I).Nombre & ", se apellida "
                 & N_Personas(I).Apellido & " y tiene"
                 & N_Personas(I).Edad'Image & " años");
      end loop;

   end;

end Main;
