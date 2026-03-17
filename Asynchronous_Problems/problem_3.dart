import 'dart:async';

Future<String> getName() => Future.delayed(Duration(seconds: 2), () => "Iftekar");
Future<int> getScore() => Future.delayed(Duration(seconds: 1), () => 95);
Future<String> getCity() => Future.delayed(Duration(seconds: 1), () => "Sylhet");

void main() async {
  print("Fetching data...");

  var results = await Future.wait([getName(), getScore(), getCity()]);

  print("Name: ${results[0]}");
  print("Score: ${results[1]}");
  print("City: ${results[2]}");
  print("All data fetched!");
}
