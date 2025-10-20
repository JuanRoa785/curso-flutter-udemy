// ignore_for_file: unused_local_variable

void docsMaps(){
  var jsonData = Map<String, String>(); //Diccionario vacío (Dart infiere el tipo Map<dynamic, dynamic>)
  
  Map<String, int> ages = { //Otra forma de declarar un diccionario con tipos explícitos
    'Ana': 25,
    'Juan': 21,
    'Pedro': 28
  }; 

  jsonData['name'] = 'Juan'; //Agregar un par clave-valor
  jsonData['lastName'] = 'Roa';

  //Acceder a un valor por su clave
  // print(jsonData['name']); //Imprime 'Juan'
  // print(jsonData['age']); //Imprime null porque no existe la clave 'age'
  // final age = jsonData['age'] ?? 'Not defined'; //Será Not defined porque no existe la clave 'age'
  // print(ages['Juan']); //Imprime 25

  var profile = { //Forma estandar de declarar un diccionario (Map) con tipos mixtos
    'usename': 'JuanRoa',
    'email': 'juanroa@gmail.com',
    'isAdmin': true,
    'age': 21
  }; 

  final name = profile['name']; //Aunque sea de tipos mixtos, aun puede retornar valores nulos

  profile.containsKey('isAdmin'); //Retorna true si existe la clave ingresada como parametro
  
  if (profile.containsKey('age')) { //containsKey() es mas rapido que acceder al valor y compararlo con null
    final age = profile['age']!; //El operador ! indica que estamos seguros que no es nulo
  }
  /* 
    IMPORTANTE: containsKey() solo verifica si la clave existe, no si su valor es nulo. Por lo que si la
    variable admite que su valor sea nulo, utilizar ! causaría un error de ejecución, en ese caso o 
    se declara con <String, Object> o se valida que el valor no sea nulo con variable['key'] != null.
  */

  //Acceder a la información de un diccionario anidado
  var users = {
    'group': 'admin',
    'members': 2,
    'user1': {
      'name': 'Ana',
      'age': 25
    },
    'user2': {
      'name': 'Juan',
      'age': 21
    }
  };
  //Acceder al nombre del user1 usando un casteo explícito
  final user1Name = (users['user1'] as Map)['age']; //Esta versión es propensa a causar errores en tiempo de ejecución si la clave no existe o el casteo falla

  //Usar un casteo implicito con 'is' para evitar errores en tiempo de ejecución
  if (users['user2'] is Map) {
    final user2Name = (users['user2'] as Map)['name'];
  } else {
    final user2Name = null;
  }

  //Diccionarios Dinamicos
  /*
    Se pueden decalarar diccionarios de tipo dinamico usando Map<String, dynamic>, estos podrían recibir 
    valores nulos, puesto que dynamic admite cualquier tipo de dato incluyendo null. Sin embargo, al hacer
    esto estaríamos perdiendo el null safety de Dart.

    Beneficios de usar Mapas dinamicos:
    - No hay necesidad de castear los valores al acceder a mapas anidadas.
    - Al consumir datos de APIs externas o bases de datos locales, serán de tipo dinámico
  */

  //Diccionarios inmutables y constantes
  /* 
    - Se pueden agregar o actualizar elementos por medio de mapName['key'] = value;
    - Se le pueden ejecutar métodos como clear(), remove(), etc.
    - Al igual que al trabajar con listas, NO se podrán modificar de ninguna forma.
  */
}