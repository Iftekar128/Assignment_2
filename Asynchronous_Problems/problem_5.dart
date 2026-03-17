import 'dart:io';
import 'dart:async';

Future<int> calculateSum(int x, int y) async {
  await Future.delayed(Duration(seconds: 3));
  return x + y;
}

void main() async {
  stdout.write("Enter first number: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  print("Calculating sum, please wait...");

  int sum = await calculateSum(num1, num2);

  print("Sum: $sum");
}
