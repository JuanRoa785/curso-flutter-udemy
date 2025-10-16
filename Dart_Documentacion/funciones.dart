/*
  Primero se define el dato de retorno de la función: void, int, String, etc
  Luego el nombre de la función y por último los paréntesis que pueden o no contener parámetros.
    - Este nombre debe seguir las mismas reglas que los nombres de variables.
    - Los parámetros se definen con su tipo de dato y nombre, separados por comas.
  El cuerpo de la función va entre llaves {}.
*/

void helloWorld(){
  print("Hello World!\n");
}

/*
  Detalle de nomenclatura:
  - Al definir una función, se le definen unos parametros, mientras que al llamarla se le
  pasan unos argumentos (que son los valores).
*/

void printMessage(String message){
  print(message);
  print("\n================================= #### =================================\n");
}

double calcularTotal(double precio, int cantidad){
  const iva = 0.19;
  precio = precio + (precio * iva);
  return precio * cantidad;
}

void imprimirTotal(double precio, int cantidad){
  final total = calcularTotal(precio, cantidad);
  print("El pedido esta compuesto por $cantidad productos, cada uno con un precio de \$$precio dolares.");
  print("El total a pagar es: \$$total dolares.");
  print("\n================================= #### =================================\n");
}

//ARROW FUNCTIONS
String getUserName(String firstName, String lastName) => '$firstName $lastName'; 
// Print(getUserName('Juan', 'Roa')); -> Juan Roa

void printMessageArrow(String message) => print(message); //En los casos donde no retornamos nada