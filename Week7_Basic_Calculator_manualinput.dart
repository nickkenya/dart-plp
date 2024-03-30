

void main() {
  // Create an instance of the Calculator class
  Calculator calculator = Calculator();

  // Provide numbers and operation manually (you can replace these values with any other method of providing input)
  int num1 = 55;
  int num2 = 10;
  String operation = '+';

  // Perform calculations
  calculator.performCalculations(num1, num2, operation);
}

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
  void performCalculations(int num1, int num2, String operation) {
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
