import "dart:io";

//Interface
abstract class Animal{
 void makeSound();
}

//base class
class Mammal{
 void breathe() {
  print('Inhale, exhale');
 }
}

//child class that inherits from mammal and animal
class Dog extends Mammal implements Animal {
 @override
 void makeSound() {
  print('Woof');
 }

//overriding an inherited method
 void breathe() {
  super.breathe();
  print('Dog breathes through lungs');
 }
}


class File{
//file name
 List<String> names = [];

 File(String fileName){
  readFile(fileName);
 }

 void readFile(String fileName) {
  try {
   final file = File(fileName);
   String content = file.readAsStringSync();
//split file content by spaces and adding each item to the list
   names = content.trim().split(' ');
  } catch(e) {
   print('Error reading file: $e');
  }
 }

 void display() {
  print('Names read from file: $names');
 }
}

void main() {
 File animals = File('animal.txt');
 animals.display();
}
