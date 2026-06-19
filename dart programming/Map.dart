void main(){
  Map<String,String> student={
    "name":"sudarshan",
    "city":"Mathura",
    "course":"flutter"
  };
  print(student);
  print(student["name"]);
  student["name"]="tanvi";
  print(student);
  student.remove("course");
  print(student);
  print(student.keys);
  print(student.values);
  print(student.length);
  Map<String, dynamic> studentdata = {
    "name":"sudarshan",
    "age":20,
    "distance":1.9,
    "hobbies":["Music", "badminton", "gaming"]
  };
  print(studentdata);
}