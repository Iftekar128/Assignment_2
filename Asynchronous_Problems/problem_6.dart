import 'dart:async';
import 'dart:io';

Future<List<String>> sortStrings(List<String> items) async {
  return Future.delayed(Duration(seconds: 2), () {
    items.sort();
    return items;
  });
}

void main() async {
  stdout.write("Enter strings separated by commas: ");
  String input = stdin.readLineSync() ?? "";

  List<String> strings = input.split(',').map((s) => s.trim()).toList();

  print("Sorting the list, please wait...");

  List<String> sortedList = await sortStrings(strings);

  print("Sorted list: $sortedList");
}
