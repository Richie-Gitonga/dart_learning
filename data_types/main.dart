import 'dart:io';

void main() {
  //get user input for numbers
  print("Enter an integer:");
  int userInput = int.parse(stdin.readLineSync()!);
  print("User Input: $userInput");

  //get user input for double
  print('enter a double:');
  double userInputDouble = double.parse(stdin.readLineSync()!);
  print("Doubel: $userInputDouble");

  //get user input for string
  print("Enter a string:");
  String userInputString = stdin.readLineSync()!;
  print("String: $userInputString");

  // get user input for list of integers
  print("enter a list of integers separated by a space:");
  List<int> userInputListInt =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  print("List of Integers: $userInputListInt");

  //get user input for Map with string keys and int values
  print(
      "enter a map with string keys and integer values (e.g., key1, value1 key2: value2)");
  Map<String, int> userInputMap = {};
  List<String> KeyValuePairs = stdin.readLineSync()!.split(' ');
  KeyValuePairs.forEach((keyValuePair) {
    List<String> pair = keyValuePair.split(':');
    String key = pair[0].trim();
    int value = int.parse(pair[1].trim());
    userInputMap[key] = value;
  });

  //display user input

  print('Map: $userInputMap');
}
