import 'dart:async';
import 'dart:io';

Future<String> reverseString(String text) async {
  return Future.delayed(Duration(seconds: 2), () {
    return text.split('').reversed.join();
  });
}

void main() async {
  stdout.write("Enter a string: ");
  String input = stdin.readLineSync() ?? "";

  print("Reversing...");

  String result = await reverseString(input);

  print("Reversed string: $result");
}
