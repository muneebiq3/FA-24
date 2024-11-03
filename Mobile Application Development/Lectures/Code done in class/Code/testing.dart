class Student {
  final String registrationNumber;
  String? name;
  String? email;
  double? cgpa;

  // Constructor with required registrationNumber and other named optional parameters
  Student({required this.registrationNumber, this.name, this.email, this.cgpa});

  // Method to display student details
  void displayStudentDetails() {
    print('Registration Number: $registrationNumber');
    print('Name: ${name ?? 'Not Provided'}');
    print('Email: ${email ?? 'Not Provided'}');
    print('CGPA: ${cgpa?.toString() ?? 'Not Provided'}');
  }
}

void main() {
  // Creating a student with all details
  Student student1 = Student(
      registrationNumber: 'Fa12',
      name: 'Ahmed',
      email: 'ahmed@example.com',
      cgpa: 3.5);

  // Creating a student with only the required registration number
  Student student2 = Student(
    registrationNumber: 'SP12',
  );

  // Display student details
  student1.displayStudentDetails();
  student2.displayStudentDetails();
  // Student student3 = Student(registrationNumber: 'FA23');

  /////////////////////////////////////
  Student_ student4 = Student_('SP16', // Positional argument
      name: 'Kamran',
      email: 'kamran@example.com',
      cgpa: 3.5);

  // Creating a student with only the required registration number
  Student_ student5 = Student_('FA19' // Positional argument
      );

  // Display student details
  student1.displayStudentDetails();
  student2.displayStudentDetails();
}

class Student_ {
  final String registrationNumber;
  String? name;
  String? email;
  double? cgpa;

  // Constructor with positional parameter for registrationNumber and named optional parameters for others
  Student_(this.registrationNumber, // Positional parameter
      {this.name,
      this.email,
      this.cgpa});

  // Method to display student details
  void displayStudentDetails() {
    print('Registration Number: $registrationNumber');
    print('Name: ${name ?? 'Not Provided'}');
    print('Email: ${email ?? 'Not Provided'}');
    print('CGPA: ${cgpa?.toString() ?? 'Not Provided'}');
  }

// Getter for registrationNumber (read-only, no setter)
  String get registrationNbr => registrationNumber;

  // Getter and Setter for name
  String? get nameOfStudent => name;
  set changeName(String? newName) {
    if (newName != null && newName.length > 2) {
      name = newName;
    } else {
      print('Name must be more than 2 characters.');
    }
  }
}
