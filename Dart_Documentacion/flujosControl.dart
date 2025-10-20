//Control Flow Statements in Dart
// ignore_for_file: unused_local_variable

void selectionDocs(){
  //Selection Statements
  //*  if-else statement
  dynamic myVar = 'Juan'; //El 'is' se usa para verificar el tipo de dato
  if (myVar is String && myVar.isNotEmpty) { //Al usar el is se hace el casting implicitamente permitiendo usar isNotEmpty
    print('myVar is a String with value: $myVar');
  } else if (myVar is int) {
    print('myVar is an integer with value: $myVar');
  } else {
    print('myVar is NOT an integer or String');
  }
  //*  switch-case statement
  final weekDay = DateTime.now().weekday;
  switch (weekDay) { //Desde Dart 3.0 no es necesario usar 'break' en cada case.
    case 1:
      print('Hoy es Lunes');
    case 2:
      print('Hoy es Martes');
    case 3:
      print('Hoy es Miercoles');
    case 4:
      print('Hoy es Jueves');
    case 5:
      print('Hoy es Viernes');
    case 6:
      print('Hoy es Sabado');
    case 7:
      print('Hoy es Domingo');
    default: //Tambien desde Dart 3.0 funcionaría como 'case _:'
      print('El día de la semana no es válido');
  }

  //En Dart se puede configurar un Switch para que haga el mismo bloque de codigo en multiples casos:
  switch (weekDay) {
    case 1:
    case 3:
    case 4:
    case 5:
      print('El restaurante esta abierto');
      break;
    case 2:
    case 6:
    case 7:
      print('El restaurante esta cerrado');
      break;
    default:
      print('El dia ingresado no es valido');
  }

  //Desde la 3ra versión de Dart se pueden usar patrones en los switch-case:
   switch (weekDay) {
    case 1 || 2 || 3 || 4 || 5:
      print('El restaurante esta abierto');
    case 6 || 7:
      print('El restaurante esta cerrado');
    default:
      print('El dia ingresado no es valido');
  }

  // Inclusive simplificandose mas:
   switch (weekDay) {
    case >= 1 && <= 5: //Nuevamente, esto funciona desde Dart 3.0
      print('El restaurante esta abierto');
    case 6 || 7:
      print('El restaurante esta cerrado');
    default:
      print('El dia ingresado no es valido');
  }
}
void iterationsDocs(){
  //Iterations Statements
  //*  for loop
  final  names = ['Ana', 'Luis', 'Carlos', 'Juan', 'Miguel'];
  for (var i = 1; i <= names.length; i++) {
    //print('${names[i-1]}');
  }

  //*  for-in loop
  for (final name in names) { //Se recomienda usar esta versión al iterar listas
    //print(name);
  }

  //Matrices
  final matrixIdentity = <List<int>>[
    [1, 0, 0],
    [0, 1, 0],
    [0, 0, 1],
  ];

  String matrixMssg = '';

  for (var i=0; i < matrixIdentity.length; i++) {
    for (var j = 0; j < matrixIdentity[i].length; j++) {
      final lineBreak = (j == matrixIdentity[i].length -1) ? '\n' : ', ';
      matrixMssg += '${matrixIdentity[i][j]}$lineBreak';
    }
  }
  //print(matrixMssg);
  /*
    SALIDA:
    1, 0, 0
    0, 1, 0
    0, 0, 1
  */

  //*  While loop
  var counter = 0;
  while (counter < 5) {
    //print('Counter value is: $counter');
    counter++;
  }

  //*  do-While loop (Se va a ejecutar al menos una vez)    
  do {
    //print('Counter value in do-while is: $counter');
    counter--;
  } while (counter > 0);

  //Jump Statements
  //*  break statement
  final numbers = [0, 12, 45, 34, 23, 6, 15];
  for (final number in numbers) {
    //print(number);
    if (number == 23) {
      break; //Fuerza la salida del ciclo cuando number es igual a 23
    }
  }

  //*  continue statement
  final numbers2 = [0,12, -1, -100, 45, 34, 100, -15, 1, 4, 6];
  for (final number in numbers2) {
    if (number < 0) {
      continue; //Salta a la siguiente iteración si number es negativo
    }
    //print(number); //Solo se imprimen los números positivos
  }
}