import 'dart:math';

// Task 1: Function to return the sum of two numbers
int sumOfTwoNumbers(int num1, int num2) {
  return num1 + num2;
}

void main() {
  // Task 2: Program using a for loop to print numbers from 1 to 10
  print('Numbers from 1 to 10:');
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // Task 3: Program using a switch statement to check string values
  String fruit = 'tomato';
  switch (fruit) {
    case 'tomato':
      print('It is an tomato.');
      break;
    case 'banana':
      print('It is a banana.');
      break;
    default:
      print('Other fruit.');
  }

  // Task 4: Program using a while loop to print numbers from 20 to 10
  print('Numbers from 20 to 10:');
  int count = 20;
  while (count >= 10) {
    print(count);
    count--;
  }

  // Task 5: Program using an if-else statement to check if a number is even or odd
  int number = 15;
  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }

  // Task 6: Program to find the largest number in a list
  List<int> numbers = [45, 23, 67, 12, 89, 34];
  int largestNumber = numbers.reduce(max);
  print('The largest number in the list is: $largestNumber');

  // Task 7: Program using a try-catch block to catch an exception
  try {
    int result = 10 ~/ 0; // This will raise an exception
    print('Result: $result'); // This line will not be executed
  } catch (e) {
    print('Error: $e');
  }
}
