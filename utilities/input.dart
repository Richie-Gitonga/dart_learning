import 'dart:io';

void main() {
 print('Enter a sequence of numbers separated by spaces: ');

 String userInput = stdin.readLineSync()!;
 List<String> values = userInput.split(' ');
 List<int> list = values.map((String value) => int.parse(value)).toList();

 print(largest(list));
}

int largest(List<int> numbers) {
 int largest = numbers[0];
 for(int i = 0; i < numbers.length; i++) {
  if(numbers[i] > largest) {
   largest = numbers[i];
  }
 }
 return largest;
}
