class Student {
  int? id;
  String studentName;
  String rollNumber;
  String email;
  String mobile;
  String department;
  String semester;
  double cgpa;

  Student({
    this.id,
    required this.studentName,
    required this.rollNumber,
    required this.email,
    required this.mobile,
    required this.department,
    required this.semester,
    required this.cgpa,
  });

  // Convert Student object to Map for database
  Map<String, dynamic> toMap() {
    return {
      'studentName': studentName,
      'rollNumber': rollNumber,
      'email': email,
      'mobile': mobile,
      'department': department,
      'semester': semester,
      'cgpa': cgpa,
    };
  }

  // Create Student from Map
  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'],
      studentName: map['studentName'],
      rollNumber: map['rollNumber'],
      email: map['email'],
      mobile: map['mobile'],
      department: map['department'],
      semester: map['semester'],
      cgpa: map['cgpa'],
    );
  }

  // Copy with updated values
  Student copyWith({
    int? id,
    String? studentName,
    String? rollNumber,
    String? email,
    String? mobile,
    String? department,
    String? semester,
    double? cgpa,
  }) {
    return Student(
      id: id ?? this.id,
      studentName: studentName ?? this.studentName,
      rollNumber: rollNumber ?? this.rollNumber,
      email: email ?? this.email,
      mobile: mobile ?? this.mobile,
      department: department ?? this.department,
      semester: semester ?? this.semester,
      cgpa: cgpa ?? this.cgpa,
    );
  }
}