import 'funciones.dart';
import 'interpolacion.dart';
import 'tiposDatos.dart';

void main() {
  //Hola Mundo en Dart
  helloWorld(); // Los strings se definen con comillas simples o dobles

  //Función auxiliar con la documentación de tipos de datos
  tipos_datos();

  //Función auxiliar con la documentación de interpolación de cadenas
  interpolacion();

  //Función auxiliar con la documentación de variables inmutables
  variables_inmutables();

  //Funciónes auxiliares con la documentación de funciones
  printMessage("Esta es una función que recibe un parámetro String.");
  imprimirTotal(18.0, 3);

  //Callbacks
  //printCallback(getDay()); Marca error porque getDay() retorna un String y no una función
  printCallback(getDay); //Correcto, se pasa la referencia a la función
  printCallback(() => "Juan Roa"); //También es válido pasar una función anónima
  printCallbackWithParameters(
    (text) => 'El nombre del usuario es: $text'
  );  //También es válido pasar una función anónima con parámetros
}