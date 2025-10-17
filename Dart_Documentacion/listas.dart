// ignore_for_file: unused_local_variable

void docsArrays() {
  //DECLARACIPÓN DE LISTAS EN DART

  //Se declarán por medio de corchetes []
  var myList = []; //Lista vacía (Dart infiere el tipo dynamic)
  var names = ['Ana','Juan','Pedro']; //Lista de strings (Dart infiere el tipo)
  List<int> numbers = [1, 2, 6, 3, 4, 5]; //Lista de enteros (tipo explícito)
  var numList = [3, 2.5, 4, 4.5 ]; //Lista de números (enteros y dobles) es de la superclase num
  var intList = <int>[3, 2, 4, 8]; //Otra forma de declarar una lista de un tipo específico
  var objectList = [1, 'Hola', true, 3.14 ]; //Lista de objetos (tipos mixtos) es de la superclase Object

  /*
    Aunque Dart lo permita es considerado una mala práctica el manejar listas con tipos mixtos, lo ideal
    es declarar explicitamente su tipo y asegurar que todos sus elementos sean del mismo tipo.
  */

  //AGREGAR ELEMENTOS A UNA LISTA
  names.add('Luis'); //Agrega un elemento al final de la lista
  numbers.addAll([6, 7, 6, 8]); //Agrega múltiples elementos al final de la lista
  numbers.insert(5, 10); //Inserta un elemento en una posición específica (índice 5)
  numbers.insertAll(6, [11, 12]); //Inserta múltiples elementos en una posición específica (índice 6)

  //ELIMINAR ELEMENTOS DE UNA LISTA
  //NOTA: En Dart los índices comienzan en 0
  names.removeAt(0); //Elimina el elemento en la posición 0 ('Ana')
  names.remove(
    'PEDRO' //Es Case Sensitive y si no encuentra un match retorna false
  ); 
  numbers.remove(6); //Elimina la primera ocurrencia del valor 6

  //Eliminar todos los elementos que cumplan una condición
  numbers.removeWhere(
    (number) => number == 6 //Elimina todas las ocurrencias del valor 6 por medio de una función anónima
  ); 
  print(numbers);

  // names.removeAt(names.length + 1); //Si el indice no existe lanza un error

  //LISTAS DE INSTANCIAS DE UNA CLASE
  List<Person> people = [
    Person('Miguel'),
    Person('Sofia'),
    Person('Valentina')
  ]; 

  people.remove(Person('Miguel')); //No lo elimina porque son instancias diferentes en memoria
  print(people);

  /*
    En resúmen es mejor usar remove cuando se trabaja con tipos primitivos (int, double, String, bool)
    ya que son comparables por valor, debería usar removeAt o removeWhere cuando se trabaja con 
    instancias de clases personalizadas.

    En general se deben hacer las pruebas correspondientes para verificar el comportamiento esperado.
  */

  //LISTAS INMUTABLES
  final List<int> finalNumsList = [1, 2, 3];
  //finalNumsList = []; //Error: No se puede reasignar una variable final
  finalNumsList.add(4); //Sin embargo, si se puede modificar su contenido
  finalNumsList.remove(2);
  print(finalNumsList);
  finalNumsList.clear(); //Vacía la lista

  const List<String> constNamesList = ['Ana', 'Juan', 'Pedro'];
  //constNamesList = []; //Error: No se puede reasignar una variable const  
  //constNamesList.add('Luis'); //Error: No se puede modificar el contenido de una lista const

  print("\n================================= #### =================================\n");
}

class Person {
  String name;

  Person(this.name); //Constructor

  @override
  String toString() {
    return this.name;
  }
}
