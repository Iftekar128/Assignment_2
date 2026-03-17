import 'dart:io';

void main() {
  File file = File('temp_file.txt'); 
  
  file.writeAsStringSync('This is a temporary file');
  print('File created: temp_file.txt');

  if (file.existsSync()) {
    file.deleteSync();
    print('File deleted successfully!');
  } else {
    print('File does not exist.');
  }
}