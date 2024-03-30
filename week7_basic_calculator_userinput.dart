import 'dart:io';

// Define a Calculator class
class Calculator {
  // Constructor for the Calculator class
  Calculator();

  // Method to perform addition
  int add(int a, int b) => a + b;

  // Method to perform subtraction
  int subtract(int a, int b) => a - b;

  // Method to perform multiplication
  int multiply(int a, int b) => a * b;

  // Method to perform division
  double divide(int a, int b) => a / b;

  // Method to perform calculations based on user input
  void performCalculations() {
    // Receive input from the user
    print('Enter first number:');
    int num1 = int.parse(stdin.readLineSync()!);

    print('Enter second number:');
    int num2 = int.parse(stdin.readLineSync()!);

    // Receive operation from the user
    print('Enter operation (+, -, *, /):');
    String operation = stdin.readLineSync()!;

    // Perform calculations based on the operation
    dynamic result;
    switch (operation) {
      case '+':
        result = add(num1, num2);
        break;
      case '-':
        result = subtract(num1, num2);
        break;
      case '*':
        result = multiply(num1, num2);
        break;
      case '/':
        if (num2 == 0) {
          print('Cannot divide by zero');
          return;
        }
        result = divide(num1, num2);
        break;
      default:
        print('Invalid operation');
        return;
    }

    // Print the result
    print('Result: $result');
  }
}

void main() {
  // Create an instance of the Calculator class
  Calculator calculator = Calculator();

  // Perform calculations
  calculator.performCalculations();
}
