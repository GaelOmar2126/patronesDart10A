// Defirnir propieedades y comportamientos comunes a todas las figuras geométricas
abstract class FiguraGeometrica {
  // Propiedades que cada figura concreta debe definir
  double? get perimetro;
  set perimetro(double? valor);

  double? get area;
  set area(double? valor);

  void obtenerPerimetro();
  
  void obtenerArea();
}
