void documentacionOperadores(){
  //Fuente: https://dart.dev/language/operators

  //Arithmetic operators (+, -, /, *, %)
  /*
    10 + 5; //15
    10 - 5; //5
    10 / 5; //2.0
    10 * 5; //50
    10 % 5; //0 (Módulo o residuo de la división
   */

  //--------------------------------------------- // ---------------------------------------------

  //Equality and relational operators (==, !=, >, <, >=, <=)
  /*
    10 == 5; //false
    10 != 5; //true
    10 > 5; //true
    10 < 5; //false
    10 >= 5; //true
    5 >= 5; //true
    10 <= 5; //false
    10 == 10.0; //true (Dart compara el valor y no el tipo de dato)
    'Comida' == 'comida'; //false (Dart es case sensitive)
   */

  //--------------------------------------------- // ---------------------------------------------

  //Logical operators (AND (&&), OR (||), NOT (!)
  /*
    final a = 10;
    final b = 5;
    final c = 15;

    (a > b) && (a < c); //true
    (a > b) && (a > c); //false

    (a > b) || (a < c); //true
    (a > b) || (a > c); //true
    (a < b) || (a > c); //false

    !(a < b); //true
    !(a > b); //false

    EJEMPLO PRACTICO:
    final email = 'test@gmail.com';
    final next = email.contains('admin') && (email.endsWith('@gmail.com') || email.endsWith('@yahoo.com'));
    print(next); //false

    EJEMPLO CON VARIABLES QUE PUEDEN SER NULL:
    String? email = 'test@gmail.com';
    final bool next = false;
    if (email != null && email.length > 0) {
      next = true; //No hay error de compilación
    }
   */

  //--------------------------------------------- // ---------------------------------------------

  //Assignment operators (=, +=, -=, *=, /=, ~/, %=)
  /*
    int a = 10;
    a += 5; //a = a + 5 -> 15
    a -= 5; //a = a - 5 -> 10
    a *= 5; //a = a * 5 -> 50
    a /= 5; //a = a / 5 -> 2.0 (El resultado es un double)
    a ~/= 5; //a = a ~/ 5 -> 2 (División entera)
    a %= 5; //a = a % 5 -> 0
   */

  //--------------------------------------------- // ---------------------------------------------

  // Ternary operator (condition ? if_true : if_false)

  /*
    var initial = '';
    final String familiyName = 'Juan Diego';

    if (familiyName.isNotEmpty) {
      initial = familiyName[0];
    } else {
      initial = 'N/A';
    }

    //Lo mismo que:
    initial = familiyName.isNotEmpty ? familiyName[0] : 'N/A';

    NOTA: No se recomienda anidar operadores ternarios por temas de legibilidad
   */

  //--------------------------------------------- // ---------------------------------------------  

  // Null-aware operators (??, ??=, ?. )
  /*  
    String? name; //Dart lo define como null

    if (DateTime.now().weekday == 4) {
      name = 'Thursday';
    }

    String playerName = 'Guest';
    if (name != null) {
      playerName = name;
    }

    print(playerName); //Thursday
    
    //Usando el operador ternario quedaría:
    playerName = name != null ? name : 'Guest';
    print(playerName); //Thursday
  
    //Y usando el operador ?? quedaría:
    playerName = name ?? 'Guest'; //Si name es null, usa 'Guest' de lo contrario usa el valor de name
    print(playerName); //Thursday

    //NOTA: Tambien funciona con funciones -> playerName = getPlayerName() ?? 'Guest';
    //donde getPlayerName() puede retornar un String o null

    //Conditional member access (?.) y Null assertion operator (!)
    print(name?[0] ?? ''); //Imprime la inicial si el name no es nulo, de lo contrario imprime ''.
    print(name![0]); //Imprime la inicial, pero si name es nulo lanza un error en tiempo de ejecución.

    //NOTA: Ambos funcionan con cualquier atributo o método de una clase.
    print(getPlayerName()?.length ?? 0); //Imprime la longitud del String retornado por getPlayerName() o 0 si es null
  */
}