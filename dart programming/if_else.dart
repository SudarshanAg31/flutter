// If, ifElse, elseif, nested if-else, switch

// Simple If-Else
// void main(){
//   int age = 10;

//   if (age>=18)
//     print("Eligible to Vote");
//   else
//     print("Not Eligible to Vote");
  
// }

// else-if Ladder
// void main(){
//   int marks = 70;

//   if (marks>=90){
//     print("Grade A+");
//   }
//   else if(marks>=70){
//     print("Grade A");
//   }
//   else if(marks>=60){
//     print("Grade B");
//   }
//   else if(marks>=50){
//     print("Grade C");
//   }
//   else{
//     print("Grade F");
//   }
  
// }

// Switch 
void main(){
  String ch = "p";
  switch (ch){
    case "a":
    case "e":
    case "i":
    case "o":
    case "u":
      print("Vowels");
      break;

    default:
      print("Not a Vowel");
      break;  
  }
}