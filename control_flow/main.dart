import 'dart:io';

void main() {
	print("Enter a number: ");
	int? number = int.parse(stdin.readLineSync()!);
	checkNumber(number);
}

void checkNumber(int value){
	if(value > 10){
		print('Your number is greater than 10');
	} else if(value < 10) {
		print('Your number is less than 10');	
	} else {
		print('Your number is equal to 10');
	}
}
