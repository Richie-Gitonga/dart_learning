import "dart:io";

void main() {
  final options = [
    "Addition",
    "Subtraction",
    "Multiplication",
    "Division",
    "Exit"
  ];

  print('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter a second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  bool exitProgram = false;

  while (!exitProgram) {
    print('Select an option: ');
    for (var i = 0; i < options.length; i++) {
      print('${i + 1}. ${options[i]}');
    }

    stdout
        .write('Enter your option(e.g 1 for addition, 2 for subtraction...): ');
    var input = stdin.readLineSync();
    //handle null inputs
    if (input == null) {
      print('Invalid input. Please try again.');
      continue;
    }

    var choice = int.tryParse(input);

    if (choice == null || choice < 1 || choice > options.length) {
      print(
          'Invalid choice. Please enter a number between 1 and ${options.length}');
      continue;
    }

    if (choice == options.length) {
      print('Exiting...');
      exitProgram = true;
      break;
    }

    print(calculator(choice, num1, num2));
  }
}

void getUserInput() {}

double calculator(int choice, double value1, double value2) {
  double result = 0.0;
  switch (choice) {
    case 1:
      result = value1 + value2;
      print('Result: ${value1} + ${value2} = ${result}');
      break;
    case 2:
      result = value1 - value2;
      print('Result: ${value1} - ${value2} = ${result}');
      break;
    case 3:
      result = value1 * value2;
      print('Result: ${value1} * ${value2} = ${result}');
      break;
    case 4:
      if (value2 == 0) {
        print("Error: Division by zero");
        result = double.nan;
      } else {
        result = value1 / value2;
      }
      print('Result: ${value1} / ${value2} = ${result}');
      break;
  }

  return result;
}
