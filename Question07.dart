//Q7: Create a marksheet using operators of at least 5 subjects and output
//should have Student Name, Student Roll Number, Class, Percentage, Grade
//Obtained etc.
import 'dart:ffi';

void main() {
  // Input: Student details
  var stdout;
  stdout.write("Enter Student Name: ");
 

  stdout.write("Enter Roll Number: ");
  


  stdout.write("Enter Class: ");
  var stdin;
  String? studentClass = stdin.readLineSync();

  // Input: Marks for 5 subjects
  List<int> marks = [];
  for (int i = 1; i <= 5; i++) {
    stdout.write("Enter marks for subject \$i: ");
    int? mark = int.tryParse(stdin.readLineSync() ?? '');
    if (mark != null) {
      marks.add(mark);
    } else {
      print("Invalid input. Please enter a valid number.");
      return;
    }
  }

  // Calculate total, percentage, and grade
  int totalMarks = marks.reduce((a, b) => a + b);
  double percentage = totalMarks / 500 * 100;
  String grade;

  if (percentage >= 90) {  grade = "A+";
  } else if (percentage >= 80) {
    grade = "A";
  } else if (percentage >= 70) {
    grade = "B";
  } else if (percentage >= 60) {
    grade = "C";
  } else if (percentage >= 50) {
    grade = "D";
  } else {
    grade = "F";
  }

  // Output: Display marksheet
  print("\n--- Marksheet ---");
  print("Student Name: \$name");
  print("Roll Number: \$rollNumber");
  print("Class: \$studentClass");
  for (int i = 0; i < marks.length; i++) {
    print("Subject \$i+1 Marks: \${marks[i]}");
  }
  print("Total Marks: \$totalMarks");
  print("Percentage: \${percentage.toStringAsFixed(2)}%");
  print("Grade: \$grade");
}
