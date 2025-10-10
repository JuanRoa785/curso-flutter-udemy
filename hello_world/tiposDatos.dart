// ignore_for_file: unused_local_variable

void tipos_datos(){
  //Tipos de datos en Dart

  //Datos Primitivos
  int numero = 10; // Entero

  double decimal = 3.14; // Número de punto flotante

  //Tambien se puede nombrar variables con nomenclatura CamelCase:
  bool esVerdadero = true; // Booleano
  //bool esFalso = 0; A diferencia de Python, Dart no traduce 0 a False y 1 a True.

  String texto = "Hola, Dart!"; // Cadena de texto (Es el unico tipo de dato que inicia con Mayuscula)
  String texto2 = 'Hola, Dart!'; // Cadena de texto con comillas simples

  //Tambien se puede nombrar variables con nomenclatura snake_case:
  String texto_multilinea = 
  '''
  Esto es una cadena
  de texto que abarca multiples lineas.
  Utilizando comillas triples simples.
  ''';

  //Al definir una variable con 'var', Dart infiere el tipo de dato automáticamente:
  var numero_inferido = 20; // Dart infiere que es un int

  var tipo_dato = numero.runtimeType; // Obtener el tipo de dato de una variable
  print("El tipo de dato de la variable 'numero' es: $tipo_dato");  
  print("Así es el output al imprimir un string multilinea:\n$texto_multilinea");

  //Tambien existen los tipos de datos dinámicos y las instancias de tipos:
}