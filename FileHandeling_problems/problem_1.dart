import 'dart:io';

void main() {
  File file = File('hello.txt');

  file.writeAsStringSync('Iftekar Hussain\n', mode: FileMode.append);

  print('Your name has been added to hello.txt');
}