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
  print("Ejemplos prácticos de tipos de datos:");
  print("El tipo de dato de la variable 'numero' es: $tipo_dato");  
  print("Así es el output al imprimir un string multilinea:\n$texto_multilinea");

  //Datos Dinamicos
  /*
    Como en JavaScript, en Dart tambien podemos cambiar el tipo de dato de una variable durante 
    el tiempo de ejecución, sin embargo, porque Dart es un lenguaje de tipado estatico, la unica
    manera de hacer esto es utilizando los tipos de datos dinamicos: 'dynamic' o 'Object'.
  */
  dynamic variable_dinamica = 100; // Dart no asume su tipo, solo sabe que es dynamic
  print("El tipo de dato de la variable 'variable_dinamica' es: ${variable_dinamica.runtimeType}");
  variable_dinamica = "Ahora soy un string"; // Cambiando el tipo de dato a String
  print("Ahora, El tipo de dato de la variable 'variable_dinamica' es: ${variable_dinamica.runtimeType}");

  /*
    Tener en cuenta que esto es una mala práctica, no se recomienda usarla y puede llevar a
    errores en tiempo de ejecución ademas de que no se aprovechan las ventajas del tipado 
    estatico.
  */

  print("\n================================= #### =================================\n");
}

void variables_inmutables(){
  final String developer = "Juan Roa"; // No se puede cambiar su valor despues de asignarlo
  //developer = "Otro nombre"; -> Esto genera un error de compilación
  final variable_sin_tipo_definido = 123.75; // Dart (compilador) infiere que es un int

  /*
    Beneficios de usar variables inmutables:
    - Seguridad: Evita cambios accidentales en el valor.
    - Rendimiento: No se necesita reservar espacio adicional en memoria.
  */

  //Ejemplo Practico
  var price = 18.0;
  final coupon = 0.05;
  price = price - (price * coupon);

  final iva = 0.19;
  final taxes = price * iva;
  final total = price + taxes;

  print("Ejemplo práctico de variables inmutables:");
  print("El precio unitario es: $price");
  print("El IVA es: $taxes");
  print("El total a pagar es: $total");
  print("\n================================= #### =================================\n");
}

void constantes() {
  /*
    Las variables inmutables se pueden asignar de antemano o durante el tiempo de ejecución,
    como resultado de algun tipo de cálculo o función.

    Sin embargo, si vamos a definir una variable cuyo valor es constante y conocido de antemano,
    es mejor usar 'const' en lugar de 'final', pues habrá una mejora en el rendimiento del sistema
    ya que la referencia a este dato ya estará guardado desde antes de que se ejecute la app.

    Retomando el ejemplo de variables_inmutables(), si sabemos que el IVA es 0.19 y no va a cambiar nunca,
    es mejor definirla como una constante:

    const double iva = 0.19; // Definición de una constante

    Ironicamente, el compilador de Dart puede reconocer cuando se van a hacer operaciones con constantes
    permitiendo asignarle el resultado de la misma a otra variable constante:
  */

  const double iva = 0.19;
  const double price = 18.0;
  const double total_price = price * iva; // El compilador lo reconoce y permite la asignación

  // o 

  const String client = "Pepito Perez";
  const String purchase_info = "El cliente $client debe pagar $total_price por su compra.";
  //Donde se observa que NO es necesario que sean del mismo tipo de datos.

  //Sin embargo al hacerlo con 'var' obtendremos un error de compilación:
  var coupon = 0.05;
  //const total_with_discount = price - (price * coupon); -> Error de compilación
}