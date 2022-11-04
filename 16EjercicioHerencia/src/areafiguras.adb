package body areafiguras is
   
   function Get_Nombre(This : in Clase_Figura) return String is
   begin
      return To_String(This.Nombre);
   end;
   
   procedure Set_Nombre(This : in Clase_Figura; Value : String) is
   begin
      This.Nombre := Value;
   end;
   
   function Create_Rectangulo(Value : in String) return Figura is
      Result : Figura := new Clase_Rectangulo;
   begin
      Result.Nombre := To_Unbounded_String(Value);
      return Result;
   end;
   
   function Create_Circulo(Value : in String) return Figura is
      Result : Figura := new Clase_Circulo;
   begin
      Result.Nombre := To_Unbounded_String(Value);
      return Result;
   end;
   
   function Calcular_Area(This : in Clase_Rectangulo) return Float is
      Result : Float;
   begin
      Result := This.Base * This.Altura;
      return Result;
   end;
   
   function Calcular_Area(This : in Clase_Circulo) return Float is
      Result : Float;
   begin
      Result := This.Pi * This.Radio * This.Radio;
      return Result;

end areafiguras;
