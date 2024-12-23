void main() {
  // Hola este es un comentario en una linea
  /*
   * Esto es un comentario de varias lineas
 */

  print("Hola, Dart!");

  var myString = "Hola Dart";
  myString = "Hola!"; // la variable puede ser mutable
  print(myString);
  //helloDart = 9; //No se puede cambiar el valor por que es fuertemente tipado
  String myString2 = "Hola Dart21";
  print(myString2);

  var myInt = 6;
  myInt = myInt + 4;

  print("la suma es:   $myInt");
  print("La resta es: ${myInt - 9}");
  print("la variable de: myInt $myInt no se modifica");

  int myInt2 = 5;
  print(myInt2);

  var myDouble = 6.5;
  print(myDouble);

  double myDouble2 = 123.45;
  print(myDouble2);

  var myBool = false;
  myBool = true;
  print(myBool);

  // Constantes

  final myFinal = "Mi propiedad final";
  print(myFinal);
  //myFinal = "Mi nueva propiedad fina"; -> Error
  final myFainalInt = myInt;
  print(myFainalInt);

  const myConst = "Mi propiedad constante";
  // myConst = "Mi nueva propiedad constante"; Error
  print(myConst);

  if (myInt == 10 && myString == "Hola") {
    print("El valor es 10");
  } else if (myInt == 11 || myString == "Hola") {
    print("El valor es 11");
  } else {
    print("Ya no es 10");
  }
  myFunction();
  var myReturn = myFunctionWithReturn();
  print(myReturn);

  var myList = ["Javier", "Master", "@Segov", "Javier"];
  print(myList);
  print(myList[0]);

  var mySet = {"Javier", "Master", "@Segov"};
  print(mySet);

  var myMap = {"Javier": 35, "Ema": 29};
  print(myMap);
  print(myMap["Ema"]);

  var myMap2 = Map<String, int>();
  myMap2["Frg152"] = 22;
  myMap2["Erne"] = 19;
  print(myMap2);

  for (var name in myList) {
    print("Imprimir $name");
  }

  var myCounter = 0;

  while (myCounter <= myInt) {
    // Tres formas diferentes de incremetar el valor
    // myCounter = myCounter + 1;
    // myCounter += 1;
    myCounter++;
    print(myCounter);
  }

  var myClass = MyClass("Javier", 35);
  print(myClass.name);
  print(myClass.age);

  String? myOptional; // el signo ? nos permite trabajar con datos nullos
  print(myOptional);

  print(MyEnum.python);
}

void myFunction() {
  print("Esto es una funcion");
}

String myFunctionWithReturn() {
  return "Esto es una funcion con Retorno";
}

class MyClass {
  String name;
  int age;

  MyClass(this.name, this.age) {}
}

enum MyEnum { dart, python, swift, kotlin }
