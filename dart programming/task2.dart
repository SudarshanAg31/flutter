void main() {
  List<String> students = [
    "Sudarshan",
    "Love",
    "Tanvi",
    "Dhruv",
    "Harshit",
  ];
  Map<String, int> marks = {
    "Sudarshan": 85,
    "Love": 72,
    "Tanvi": 91,
    "Dhruv": 65,
    "Harshit": 38,
  };
   print("Students using FOR Loop:");
  for (int i = 0; i < students.length; i++) {
    print(students[i]);
  }
  int i = 0;
   print("Students using While Loop:");
  while (i < students.length) {
    print(students[i]);
    i++;
  }
  int j = 0;
   print("Students using Do While Loop:");
  do {
    print(students[j]);
    j++;
  } while (j < students.length);
   print("Students using FOR-IN Loop:");
  for (String student in students) {
    print(student);
  }
   print("Students using FOR-EACH Loop:");
  students.forEach((student) {
    print(student);
  });
  for (String student in students) {
    int studentMarks = marks[student]!;
    String grade;
    if (studentMarks >= 90) {
      grade = "A+";
    } else if (studentMarks >= 80) {
      grade = "A";
    } else if (studentMarks >= 70) {
      grade = "B";
    } else if (studentMarks >= 60) {
      grade = "C";
    } else if (studentMarks >= 40) {
      grade = "D";
    } else {
      grade = "Fail";
    }
    String remarks;
    switch (grade) {
      case "A+":
        remarks = "Outstanding";
        break;
      case "A":
        remarks = "Excellent";
        break;
      case "B":
        remarks = "Very Good";
        break;
      case "C":
        remarks = "Good";
        break;
      case "D":
        remarks = "Needs Improvement";
        break;
      default:
        remarks = "Failed";
    }
    print("\nStudent : $student");
    print("Marks    : $studentMarks");
    print("Grade    : $grade");
    print("Remarks  : $remarks");
  }
 ;
}