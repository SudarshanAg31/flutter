class Student {
  String? name;
  int? age;

  Student(String name, int age) {
    this.age = age;
    this.name = name;
  }
}

void main() {
  Student s1 = new Student("sudarshan", 19);
  print(s1.name);
}