// Definimos una anotacion personalizada
class MyCustomAnnotation {
  final String description;

  const MyCustomAnnotation(this.description);
}

// Usamos la anotacion en una clase y un metodo
@MyCustomAnnotation('Esta es una clase importante')
class MyClass {
  @MyCustomAnnotation('Este metodo realiza una operacion')
  void myMethod() {
    print('Metodo Ejecutado');
  }
}

void main() {
  var myClass = MyClass();
  myClass.myMethod();
}
