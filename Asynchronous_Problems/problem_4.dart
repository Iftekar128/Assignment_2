Future<int> addNumbers(int a, int b) async {
  return Future.delayed(Duration(seconds: 2), () => a + b);
}

void main() async {
  print("Calculating sum...");

  int sum = await addNumbers(10, 20);

  print("Sum: $sum");
}
