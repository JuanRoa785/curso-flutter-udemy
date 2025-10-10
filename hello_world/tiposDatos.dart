void tipos_datos(){
  //Tipos de datos en Dart

  //Datos Primitivos
  int numero = 10; // Entero

  double decimal = 3.14; // Número de punto flotante

  //Tambien se puede nombrar variables con nomenclatura CamelCase:
  bool esVerdadero = true; // Booleano

  String texto = "Hola, Dart!"; // Cadena de texto (Es el unico tipo de dato que inicia con Mayuscula)
  String texto2 = 'Hola, Dart!'; // Cadena de texto con comillas simples

  //Tambien se puede nombrar variables con nomenclatura snake_case:
  String texto_multilinea = 
  '''
  Esto es una cadena
  de texto que abarca multiples lineas.
  Utilizando comillas triples simples.
  ''';

  var tipo_dato = numero.runtimeType; // Obtener el tipo de dato de una variable
  print("El tipo de dato de la variable 'numero' es: $tipo_dato");  
  print("Así es el output al imprimir un string multilinea:\n$texto_multilinea");

  //Tambien existen los tipos de datos dinámicos y las instancias de tipos:
}