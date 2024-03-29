class Student{
 String name;
 int grade;
 int age;

 Student(this.name, this.grade, this.age);

 void displayInfo() {
  print('My name is $name, $age years old and in grade $grade');
 } 
}

class Teacher{
 String name;
 int age;
 String subject;

 Teacher(this.name, this.age, this.subject);

 void displayInfo() {
  print('Hello, My name is $name. I am $age years old and love teaching $subject');
 }
}

class User{
 void printUser() {
  Student student = Student("Alice Kioko", 9, 14);
  Teacher teacher = Teacher("Brian", 35, "Maths");

  student.displayInfo();
  teacher.displayInfo();
 }
}

void main() {
 User user1 = User();
 user1.printUser();
}
