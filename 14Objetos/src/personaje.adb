package body personaje is
   
   function Create(Nombre:String) return Campeon is
      Result : Campeon;
   begin
      Result := new Clase_Campeon;
      
      Result.Nombre := To_Unbounded_String(Nombre);
      Result.Nivel := 1;
      Result.Experiencia := 0;
      
      return Result;
   end;
   
   function Get_Nombre(this:Clase_Campeon) return String is
   begin
      return To_String(This.Nombre);
   end;
   
   function Get_Nivel(this:Clase_Campeon) return Niveles is
   begin
      return This.Nivel;
   end;

   function To_String(This:Clase_Campeon) return String is
   begin
      return "Soy el campeón " 
        & To_String(This.Nombre) & 
        " (HP:" & This.Hp'Image & "," 
        & This.Nivel'Image &")";
   end;

end personaje;
