void interpolacion(){
  //Interpolación de cadenas en Dart

  String nombre = "Juan";
  String apellido = "Roa";
  int edad = 25;

  //Interpolación simple
  String saludo = "Hola, mi nombre es $nombre y tengo $edad años.";
  print(saludo); // Output: Hola, mi nombre es Juan y tengo 25 años.

  /* 
    Tener en cuenta que al llamar una variable dentro de una cadena con $variable,
    implicitamente el compilador lo va a convertir a string por mediod de la función
    toString(), por lo que no es necesario llamar a esta función manualmente.
  */

  //Interpolación con expresiones
  String descripcion = "El próximo año tendré ${edad + 1} años.";
  print(descripcion); // Output: El próximo año tendré 26 años.

  //Uso de llaves para evitar ambigüedades
  String ambiguedad = "Mis amigos me dicen ${nombre}cho.";
  print(ambiguedad); // Output: Mi nombre es Juanson.

  //Concatenación de cadenas
  String concatenacion = "Hola, " + nombre + ". Así que tienes " + edad.toString() + " años.";
  print(concatenacion); // Output: Hola, Juan. Tienes 25 años.

  String iniciales = "Mis iniciales son: ${nombre[0]}. ${apellido[0]}.\n";
  print(iniciales); // Output: Mis iniciales son: J. R.
}