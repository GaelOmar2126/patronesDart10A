class configuracion {
  //Es un constructor privado
  configuracion._();

  // lo que es static vivr durante todo el ciclo de vida de la aplicacion
  // final: no se puede cambiar el valor de la variable
  static final configuracion _instancia = configuracion._();

  //Es un constyructor de fabrica que devuelve la misma instancia de la clase
  factory configuracion() => _instancia;
  String idioma = 'es';
}
