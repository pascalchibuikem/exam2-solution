import 'package:exam2/exam2.dart' as exam2;
import 'dart:math';

void main() {
  // All functions are called in this main method
  //1
  int result = sum(20, 12);
  print('Sum is: $result');

  //2
   int number = 7;
  int factorialResult = factorial(number);
  print('The factorial of $number is: $factorialResult');

  //3
  int numberToCheck = 3;
  if (isPrime(numberToCheck)) {
    print('$numberToCheck is a prime number.');
  } else {
    print('$numberToCheck is not a prime number.');
  }
  //4
  double celsiusTemperature = 15.0;
  double fahrenheitTemperature = celsiusToFahrenheit(celsiusTemperature);
  
  print('$celsiusTemperature degrees Celsius is equal to $fahrenheitTemperature degrees Fahrenheit.');
  //5
  String originalString = "Hello, World!";
  String reversedString = reverseString(originalString);
  
  print('Original string: $originalString');
  print('Reversed string: $reversedString');
  //6
  Person person1 = Person('Emeka', 25);
  person1.displayInfo();
  //7
Rectangle myRectangle = Rectangle(12.0, 8.0);
  double area = myRectangle.calculateArea();
  print('Area of the rectangle: $area square units');
  //8
   Circle myCircle = Circle(4.0);

  double circumference = myCircle.calculateCircumference();
  print('Circumference of the circle: $circumference units');
  //9
  BankAccount myAccount = BankAccount(3000.0);

  myAccount.deposit(1000.0);

  myAccount.withdraw(500.0);

  myAccount.checkBalance();
  //10
  Student student1 = Student('Emeka', 20, 80.0);

  student1.checkPassFail();
  //11
Calculator myCalculator = Calculator();

  double resultAddition = myCalculator.add(20.0, 12.0);
  double resultSubtraction = myCalculator.subtract(20.0, 10.0);
  double resultMultiplication = myCalculator.multiply(11.0, 8.0);
  double? resultDivision = myCalculator.divide(30.0, 3.0);

  print('Addition: $resultAddition');
  print('Subtraction: $resultSubtraction');
  print('Multiplication: $resultMultiplication');
  print('Division: $resultDivision');
  //12
  Car myCar = Car();

  myCar.start();

  myCar.checkFuelLevel();

  myCar.stop();
  //13
  List<int> numbers = [9, 5, 90, 8, 32, 9];

  try {
    // Finding the maximum element
    int maxElement = findMax(numbers);
    print('Maximum element in the list: $maxElement');
  } catch (e) {
    print(e);
  }
  //14
// Creating an instance of the Employee class
  Employee employee1 = Employee('Emma', 50000.0);

  employee1.giveBonus(3000.0);
  //15
  // Using the Triangle class
  Triangle triangle1 = Triangle(8.0, 6.0);
  double area1 = triangle1.calculateArea();
  print('Area of triangle 1: $area1 square units');

  // Using the calculateTriangleArea function
  double base2 = 5.0;
  double height2 = 10.0;
  double area2 = calculateTriangleArea(base2, height2);
  print('Area of triangle 2: $area2 square units');
  //16
  double inputNumber = 25.0;

  try {
    // Finding the square root
    double result = findSquareRoot(inputNumber);
    print('Square root of $inputNumber: $result');
  } catch (e) {
    print(e);
  }
  //17
  int limit = 50;

  try {
    // Generating Fibonacci numbers up to the specified limit
    List<int> fibonacciNumbers = generateFibonacciList(limit);
    print('Fibonacci numbers up to $limit: $fibonacciNumbers');
  } catch (e) {
    print(e);
  }
  //18
  int year1 = 2020;
  int year2 = 1900;
  int year3 = 2000;
  int year4 = 2023;

  // Checking if the years are leap years
  print('$year1 is a leap year: ${isLeapYear(year1)}');
  print('$year2 is a leap year: ${isLeapYear(year2)}');
  print('$year3 is a leap year: ${isLeapYear(year3)}');
  print('$year4 is a leap year: ${isLeapYear(year4)}');

  //19
  int number2 = 5;

  // Computing the factorial
  int result2 = factorial2(number);

  print('Factorial of $number: $result2');
  //20
  List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Filtering even numbers
  List<int> evenNumbersList = evenNumbers(originalList);

  print('Original List: $originalList');
  print('List with Even Numbers: $evenNumbersList');
}


// Answer 1
int sum(int a, int b) {
  return a + b;
}
//Answer 2
int factorial(int p) {
  if (p == 0 || p == 1) {
    return 1;
  } else {
    return p * factorial(p - 1);
  }
}
//Answer 3
bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= (number); i++) {
    if (number % i == 0) {
      return false; 
    }
  }

  return true; 
}
//Answer 4
double celsiusToFahrenheit(double celsius) {
  return (celsius * 9/5) + 32;
}
//Answer 5
String reverseString(String input) {
  List<String> chars = input.split('');
  chars = chars.reversed.toList();
  return chars.join();
}
//Answer 6
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo() {
    print('Name: $name\nAge: $age');
  }
}
//Aswer 7
class Rectangle {
  double length;
  double width;

  Rectangle(this.length, this.width);

  double calculateArea() {
    return length * width;
  }
}
//Answer 8
class Circle {
  double radius;

  Circle(this.radius);

  double calculateCircumference() {
    return 2 * pi * radius;
  }
}
//Answer 9
class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited: $amount units');
    } else {
      print('Invalid deposit amount.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('Withdrawn: $amount units');
    } else {
      print('Invalid withdrawal amount or insufficient balance.');
    }
  }

  void checkBalance() {
    print('Current Balance: $balance units');
  }
}
//Answer 10
class Student {
  String name;
  int age;
  double grade;

  Student(this.name, this.age, this.grade);

  void checkPassFail() {
    if (grade >= 50.0) {
      print('$name passed the exam with a grade of $grade.');
    } else {
      print('$name failed the exam with a grade of $grade.');
    }
  }
}
//Answer 11
class Calculator {
  // Method to add two numbers
  double add(double num1, double num2) {
    return num1 + num2;
  }

  // Method to subtract two numbers
  double subtract(double num1, double num2) {
    return num1 - num2;
  }

  // Method to multiply two numbers
  double multiply(double num1, double num2) {
    return num1 * num2;
  }

  // Method to divide two numbers
  double? divide(double num1, double num2) {
    if (num2 != 0) {
      return num1 / num2;
    } else {
      print('Cannot divide by zero.');
      return null;
    }
  }
}
//Answer 12
class Car {
  bool isRunning = false;
  double fuelLevel = 3.0;

  // Method to start the car
  void start() {
    if (!isRunning) {
      print('Car is starting...');
      isRunning = true;
    } else {
      print('Car is already running.');
    }
  }

  // Method to stop the car
  void stop() {
    if (isRunning) {
      print('Car is stopping...');
      isRunning = false;
    } else {
      print('Car is already stopped.');
    }
  }

  // Method to check the fuel level
  void checkFuelLevel() {
    print('Fuel Level: $fuelLevel litres');
  }
}
//Answer 13
int findMax(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('List cannot be empty');
  }

  int maxElement = numbers[0];
  for (int number in numbers) {
    if (number > maxElement) {
      maxElement = number;
    }
  }
  return maxElement;
}
//Answer 14
class Employee {
  String name;
  double salary;

  // Constructor
  Employee(this.name, this.salary);

  // Method to give a bonus to the employee
  void giveBonus(double bonusAmount) {
    if (bonusAmount > 0) {
      salary += bonusAmount;
      print('$name received a bonus of $bonusAmount. New salary: $salary');
    } else {
      print('Invalid bonus amount.');
    }
  }
}
//Answer 15
class Triangle {
  double base;
  double height;

  // Constructor
  Triangle(this.base, this.height);

  // Method to calculate the area of the triangle
  double calculateArea() {
    return 0.5 * base * height;
  }
}

// Function to calculate the area of a triangle using a given base and height
double calculateTriangleArea(double base, double height) {
  return 0.5 * base * height;
}
//Answer 16
// Function to find the square root of a given number
double findSquareRoot(double number) {
  if (number < 0) {
    throw ArgumentError('Cannot find square root of a negative number.');
  }

  return sqrt(number);
}
//Answer 17
List<int> generateFibonacciList(int limit) {
  if (limit < 0) {
    throw ArgumentError('Limit must be a non-negative number.');
  }

  List<int> fibonacciList = [];

  int a = 0, b = 1;

  while (a <= limit) {
    fibonacciList.add(a);
    int next = a + b;
    a = b;
    b = next;
  }

  return fibonacciList;
}
//Answer 18
bool isLeapYear(int year) {
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      return year % 400 == 0;
    } else {
      return true;
    }
  }
  return false;
}
//Answer 19
int factorial2(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}
//Answer 20
List<int> evenNumbers(List<int> numbers) {
  return numbers.where((number) => number % 2 == 0).toList();
}