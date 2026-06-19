import 'dart:io';
// void main(){
//   String? input=stdin.readLineSync();
//   print("hello $input");
//   // type conversion
//   if(input!=null){
//     int age=int.parse(input);
//     age=2026-age;
//     print(age);
//   }
//   else{
//     print("error");
//   }
// }
// void main(){
//   String? input=stdin.readLineSync();
//   var age=int.parse(input!);
//   age=2026-2006;
//   print(age);
// }
//take input string in one line and convert into list
void main(){
List<int> arr=stdin.readLineSync()!.split(" ").map((i)=> int.parse(i)).toList();
print(arr);
}