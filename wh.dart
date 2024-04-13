
// Define the Person class
class Person {
  // Properties: name and age
  String name;
  int age;

  // Constructor to initialize a Person object
  Person(this.name, this.age);

  // Method to print person details
  void printDetails() {
    print('Name: $name, Age: $age');
  }
}

// Define the Employee class that extends Person
class Employee extends Person {
  // Additional property: salary
  double salary;

  // Constructor to initialize an Employee object
  Employee(String name, int age, this.salary) : super(name, age);

  // Override the printDetails method to include salary
  @override
  void printDetails() {
    // Call the base class method to print name and age
    super.printDetails();
    // Print the salary
    print('Salary: \$${salary.toStringAsFixed(2)}');
  }
}

// Main function to run the program
void main() {
  // Create a Person object
  Person person = Person('Alice', 30);
  // Print the person's details
  person.printDetails();

  print(''); // Add a blank line for separation

  // Create an Employee object
  Employee employee = Employee('Bob', 40, 50000.00);
  // Print the employee's details
  employee.printDetails();
}




