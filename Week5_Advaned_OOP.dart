
void main() {
  // Create an instance of the School class
  School school = School();

  // Call the method to create objects and print information
  school.createObjectsAndPrintInfo();
}
// Define a class for a Student
class Student {
  String name;
  int age;
  int gradeLevel;

  // Constructor for the Student class
  Student(this.name, this.age, this.gradeLevel);

  // Method to print out student's information
  void printStudentInfo() {
    print('Student Information:');
    print('Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
    print("");
  }
}

// Define a class for a Teacher
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor for the Teacher class
  Teacher(this.name, this.age, this.subject);

  // Method to print out teacher's information
  void printTeacherInfo() {
    print('Teacher Information:');
    print('Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

// Define a class to create student and teacher objects
class School {
  void createObjectsAndPrintInfo() {
    // Create a Student object
    Student student = Student('Kimutai', 15, 10);

    // Create a Teacher object
    Teacher teacher = Teacher('Mr. Nickson', 33, 'Math');

    // Print out student's information
    student.printStudentInfo();

    // Print out teacher's information
    teacher.printTeacherInfo();
  }
}

