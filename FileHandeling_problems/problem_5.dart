import 'dart:io';

void main() {

  // Mam, if I run this code, 100 files will be created
  // so my assignment will look messy. I do not run it.
  // ⚠️ If you run this in VS Code, 100 files will be created.

  for (int i = 1; i <= 100; i++) {
    File file = File('file$i.txt');
    file.writeAsStringSync('This is file number $i');
  }

  print('100 files created successfully!');
}