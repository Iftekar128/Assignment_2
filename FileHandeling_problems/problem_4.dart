import 'dart:io';

void main() {
  File sourceFile = File('hello.txt');
  File targetFile = File('hello_copy.txt');

  targetFile.writeAsBytesSync(sourceFile.readAsBytesSync());

  print('File copied successfully!');
}