void main() {
  List<int> fibonacciNumbers =
      List.generate(10, (index) => fibonacci(index + 1));
  List<String> flybyObjects =
      fibonacciNumbers.map((num) => "turn: $num").toList();
  //var result = fibonacci(20);
  //print(result);

  flybyObjects.where((name) => name.contains('turn')).forEach(print);
}

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}
