import 'dart:io';

void main() {
print("Enter the following items below: two numbers and a string and a sequence of numbers");

print("Enter a number: ");
int num1 = int.parse(stdin.readLineSync()!);
print("Enter a second number: ");
int num2 = int.parse(stdin.readLineSync()!);

addTwo(num1, num2);
subtractTwo(num1, num2);
multiplyTwo(num1, num2);
divideTwo(num1, num2);

print("Enter a word: ");
String word = stdin.readLineSync()!;
stringLength(word);

print("Enter a sequence of numbers separated by spaces: ");
List<int> numbers = stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
getFirstElement(numbers);

}

void addTwo(int a, int b){
    int result = a + b;
    print("sum of the two values: $result");
} 

void subtractTwo(int a, int b){
    int result = a - b;
    print("subtraction of the two values: $result");
}

void multiplyTwo(int a, int b){

    int result = a * b;
    print("multiplication of the two values: $result");
}

void divideTwo(int a, int b) {
    
    double result = a / b;
    print("division of the two values: $result");
}

void stringLength(String word) {
    int length = word.length;
    print("The length of the string is $length");
}

void getFirstElement(List<int> values) {
    var firstValue = values[0];
    print("The first Element is $firstValue");
}