import 'dart:async';
import 'dart:io';

Future<List<int>> doubleValues(List<int> numbers) async {
  return Future.delayed(Duration(seconds: 2), () {
    return numbers.map((n) => n * 2).toList();
  });
}

void main() async {
  stdout.write("Enter integers separated by commas: ");
  String input = stdin.readLineSync() ?? "";

  List<int> nums = input.split(',').map((e) => int.parse(e.trim())).toList();

  print("Processing...");

  List<int> result = await doubleValues(nums);

  print("Modified list: $result");
}
