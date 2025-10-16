// ignore_for_file: unused_local_variable

void documentacionNullSafety(){
  //var name = 'Darwin';
  //name = null; -> Mostrará un error de ejecución
  
  String? nameNull = 'Nombre que puede ser nulo';
  nameNull = null; //Funcionaría correctamente
  
  // nameNull.length -> Daría error ya que esta variable puede ser nula.
  
  if (nameNull != null) {
	  print(nameNull.length); //Ahí si funcionanría
  }

  if (2 < 5) { //Codindición de ejemplo para volver nula la variable
    nameNull = null;
  }

  /*
    NOTA: Dart puede inferir si una variable es nula en sus declaraciones, pero en flujos mas complejos
    como al usar un if, un switch o un input no puede hacerlo, por lo que es necesario hacer las validaciones pertinentes.
  */
  
  //Sin embargo esto es muy largo, por lo que una alternativa es usar:
  print(nameNull?.length); 
  //donde Dart hace la validación internamente antes de llamar al atributo o función
  
  //Cabe resaltar que se va a ejecutar la linea de codigo, de modo que se imprimirá el null
  //Hay que tener cuidado y verificar donde vale la pena usar el ? y donde el if clasico.
  
  //por ejemplo:
  final containsLetter = nameNull?.contains('a'); //Dart asignaría el tipo como bool?
  final nameLength = nameNull?.length; //Dart asignaría el tipo int?
  //Permitiendo que tenga el valor deseado o que sea nulo

  //--------------------------------------------- // ---------------------------------------------
  
  //Null Check Operator (!)

  //Para asegurar que containsLetterRigid o nameLengthRigid no tome valores nulos se puede usar:
  final containsLetterRigid = nameNull!.contains('a'); //Dart asignaría el tipo como bool
  final nameLengthRigid = nameNull.length; //Dart asignaría el tipo como int
  //En el caso de nameLengthRigid como ya se sabe que no es nulo gracias a containsLetterRigid usar el ! otra vez 
  //sería redundante

  /*
	  Pero esto solo se debe hacer cuando estamos seguros que la variable no es nula en  ese momento,
	  pues si lo es Dart nos dara un error durante el tiempo de ejecución.
  */
}