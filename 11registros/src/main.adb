with IO; use IO;
with juego; use juego;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Characters.Conversions; use Ada.Characters.Conversions;

procedure Main is

   function Try_Get_Profesion(Profesion : out Profesiones) return Boolean is
   begin
      Profesion := Profesiones'Value(Get_NotEmpty_Line);
      return True;
   exception
      when others => return False;
   end;

   function Get_Profesion
     (Prompt : String := "";
      Error_Message : String := "Entrada inv�lida. Reintente")
      return Profesiones is
      Entrada_Correcta : Boolean;
      Result : Profesiones;
   begin
      if (Prompt'Length > 0) then
         Put_Line(Prompt);
      end if;

      for P in Profesiones loop
         Put_Line(To_String(P));
      end loop;

      loop
         Entrada_Correcta := Try_Get_Profesion(Result);
         if (Entrada_Correcta) then
            return Result;
         end if;
         Put_Line(Error_Message);
      end loop;

   end;

begin
   declare
      Lista_Jugadores : Array_Jugadores(1..Get_Integer(Prompt => "�Cu�ntos jugadores son?"));

   begin
      for I in Lista_Jugadores'Range loop
         declare
            Nombre_Jugador : String := Get_NotEmpty_Line("Como se llama el Jugador" & I'Image);
            Campeon : Jugador :=
              (Nombre => To_Unbounded_String(Nombre_Jugador),
               Profesion => Get_Profesion("�Cual es la profesion del personaje?"),
               others => <>);
         begin
            Lista_Jugadores(I) := Campeon;
         end;
      end loop;

      for Champion of Lista_Jugadores loop
         Put_Line(To_String(Champion));
      end loop;

   end;

end Main;
