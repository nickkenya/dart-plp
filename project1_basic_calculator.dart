import 'dart:io';

void main() {
  print('Welcome to the Calculator App');

  while (true) {
    // Display menu options
    print('\nEnter the operation you want to perform:');
    print('1. Addition (+)');
    print('2. Subtraction (-)');
    print('3. Multiplication (*)');
    print('4. Division (/)');
    print('5. Exit');

    // Prompt user for choice
    String choice = prompt('Enter your choice (1-5): ');

    switch (choice) {
      case '1':
        performOperation('+');
        break;
      case '2':
        performOperation('-');
        break;
      case '3':
        performOperation('*');
        break;
      case '4':
        performOperation('/');
        break;
      case '5':
        print('Exiting the Calculator App. Goodbye!');
        return;
      default:
        print('Invalid choice. Please enter a valid option.');
    }
  }
}

// Function to perform arithmetic operation
void performOperation(String operation) {
  // Prompt user for input
  double num1 = double.parse(prompt('Enter the first number: '));
  double num2 = double.parse(prompt('Enter the second number: '));

  late double result; // Declare result variable

  // Perform arithmetic operation
  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print('Error: Division by zero');
        return;
      }
      break;
  }

  // Display result
  print('Result: $result');
}

// Function to prompt user for input
String prompt(String promptText) {
  stdout.write(promptText);
  return stdin.readLineSync()!;
}
