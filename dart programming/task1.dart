void main() {
  String studentName = "Sudarshan Agrawal";
  int rollNumber = 59;
  String course = "B-Tech";
  int semester = 5;
  int subject1 = 90;
  int subject2 = 88;
  int subject3 = 95;
  int totalMarks = subject1 + subject2 + subject3;
  double averageMarks = totalMarks / 3;
  double percentage = (totalMarks / 300) * 100;
  bool isPassed = percentage >= 40;
  subject1 += 5;
  totalMarks = subject1 + subject2 + subject3;
  averageMarks = totalMarks / 3;
  percentage = (totalMarks / 300) * 100;
  isPassed = percentage >= 40;
  print("\nStudent Name : $studentName");
  print("Roll Number  : $rollNumber");
  print("Course       : $course");
  print("Semester     : $semester");
  print("\nSubject 1    : $subject1");
  print("Subject 2    : $subject2");
  print("Subject 3    : $subject3");
  print("\nTotal Marks  : $totalMarks");
  print("Average      : ${averageMarks.toStringAsFixed(2)}");
  print("Percentage   : ${percentage.toStringAsFixed(2)}%");
  print("Result       : ${isPassed ? "Pass" : "Fail"}");
}