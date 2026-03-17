import 'dart:io';

void main() {
  File file = File('students.csv');

  
  String data = 'Name,Age,Address\n';
  data += 'Iftekar Hussain,21,Sylhet\n';
  data += 'Emam,22,Dhaka\n';
  data += 'Jim,20,Chittagong\n';

  file.writeAsStringSync(data);

  print('Data written to CSV file.\n');

  List<String> lines = file.readAsLinesSync();

  print('Reading from CSV file:');
  for (String line in lines) {
    List<String> values = line.split(',');
    print('Name: ${values[0]}, Age: ${values[1]}, Address: ${values[2]}');
  }
}