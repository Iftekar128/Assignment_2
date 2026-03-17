import 'dart:io';

void main() async {
  final file = File('data.csv');
  List<String> lines = await file.readAsLines();

  for (var line in lines) {
    List<String> values = line.split(',');
    print(values);
  }
}
