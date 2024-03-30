import 'dart:io';

void main() {
  // Initialize rectangle with predefined values
  Rectangle rectangle = Rectangle(10, 3);

  // Calculate and print area of the rectangle
  rectangle.calculateArea();
}

// Define an interface called Readable
abstract class Readable {
  void readDataFromFile(String fileName);
}

// Define a superclass called Shape
class Shape {
  double _area;

  // Constructor for Shape class
  Shape() : _area = 0.0; // Initialize _area to 0.0 by default

  // Getter method for area
  double get area => _area;

  // Method to calculate the area (to be overridden by subclasses)
  void calculateArea() {
    print('Calculating area of the shape...');
  }
}

// Define a subclass called Rectangle which inherits from Shape and implements Readable
class Rectangle extends Shape implements Readable {
  double _length;
  double _width;

  // Constructor for Rectangle
  Rectangle(this._length, this._width);

  // Method to calculate the area of Rectangle
  @override
  void calculateArea() {
    _area = _length * _width;
    print('Area of Rectangle: $_area');
  }

  // Method to read data from file and initialize Rectangle instance
  @override
  void readDataFromFile(String fileName) {
    try {
      // This method is not used anymore, but kept to implement the Readable interface
      print('Reading data from file is not supported.');
    } catch (e) {
      print('Error reading data from file: $e');
    }
  }
}
