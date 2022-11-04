package body selva is

   --  function Create(Value : String) return Animal is
   --     Result : Animal := new Clase_Animal;
   --  begin
   --     Result.Nombre := To_Unbounded_String(Value);
   --     return Result;
   --  end;
   
   function Get_Nombre(This : in Clase_Animal) return String is
   begin
      return To_String(This.Nombre);
   end;
   
   function Create_Leon(Value : String) return Animal is
      Result : Animal := new Clase_Leon;
   begin
      Result.Nombre := To_Unbounded_String(Value);
      return Result;
   end;
   
   function Create_Jirafa(Value : String) return Animal is
      Result : Animal := new Clase_Jirafa;
   begin
      Result.Nombre := To_Unbounded_String(Value);
      return Result;
   end;
   
   function Create_Pato(Value : String) return Animal is
      Result : Animal := new Clase_Pato;
   begin
      Result.Nombre := To_Unbounded_String(Value);
      return Result;
   end;
   
   function Create_Aguila(Value : String) return Animal is
      Result : Animal := new Clase_Aguila;
   begin
      Result.Nombre := To_Unbounded_String(Value);
      return Result;
   end;
   
   procedure Hablar(This : Clase_Leon) is
   begin
      Put_Line("ROOOOOAAAAAAAARR");
   end;
   
   procedure Hablar(This : Clase_Jirafa) is
   begin
      Put_Line("Soy una jirafa y no emito sonido");
   end;
   
   procedure Hablar(This : Clase_Pato) is
   begin
      Put_Line("QUACK");
   end;
   
   procedure Hablar(This : Clase_Aguila) is
   begin
      Put_Line("HUHUHUHUHUHUUHUHU");
   end;

end selva;
