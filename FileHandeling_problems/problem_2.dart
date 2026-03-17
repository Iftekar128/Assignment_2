import 'dart:io';

void main() {
  File file = File('hello.txt');

  file.writeAsStringSync('Sakib\n', mode: FileMode.append);

  print('Friend\'s name added successfully!');
}