package body juego is

   function To_String(Value: in Profesiones) return String is
   begin
      return To_Upper(Value'Image(1..1)) & To_Lower(Value'Image(2..Value'Image'Length));
   end;   
   
   function To_String(Value : in Jugador) return String is      
   begin
      return To_String(Value.Nombre) & " - "
        & To_String(Value.Profesion) &
        " de nivel" & Value.Nivel'Image &
        " (HP:" & Value.Hp'Image & ")";
   end;

end juego;
