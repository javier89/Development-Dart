import 'dart:mirrors';
import 'main.dart';
import 'metadata.dart';

void main() {
  _printClassMetada(Book);

  _printMethodMetadata(Book, 'showBookInfo');
}

void _printClassMetada(Type type) {
  final ClassMirror = reflectClass(type);
  final metadata = ClassMirror.metadata;

  for (var annotation in metadata) {
    if (annotation.reflectee is Author) {
      final author = annotation.reflectee as Author;
      print(
          'class: ${type} - Author: ${author.name}, Version: ${author.version}');
    }
  }
}

void _printMethodMetadata(Type type, String methodName) {
  final classMirror = reflectClass(type);
  final methodMirror = classMirror.declarations.values.firstWhere((element) =>
      element is MethodMirror && element.simpleName == Symbol(methodName));

  final metadata = methodMirror.metadata;
  for (var annotation in metadata) {
    if (annotation.reflectee is Author) {
      final author = annotation.reflectee as Author;
      print(
          'Method: $methodName - Author: ${author.name}, version: ${author.version}');
    }
  }
}
