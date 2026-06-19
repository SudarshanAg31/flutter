// Dart Programming Five Different loops
// 1. for loop: When you know number of Iteration
// 2. while loop: When we check the condition before Execution 
// 3. do while loop: When u need to execute your loop atleast before the condition
// 4. for-in() loop: When data is already given 
// 5. forEach(): Similar but a different way to work with Data
// 1. 
// void main(){
//   for (int i=1;i<=10;i++)
//     print(i);
// }


//2. While
// void main(){
//   int i=1;
//   while(i<=10)
//   {
//     if (i==5)
//    {
//     i++; 
//     continue;}

//     print(i);
//     i++;
//   }
// }




// void main(){
//   int i =1;
//   do {
//     print (i);
//     i++;
//   }while (i>10);
// }



// 4. for in Loop
// void main(){
//   var numbers = [10,20,30,40];
//   int sum = 0;
//   for (int i in numbers){
//       sum += i;
//   }
//   print(sum);
// }

// //foreach loop
// void main(){
//   var numbers = [10,20,30,40];
//   int sum = 0;
//   numbers.forEach((num)=> sum+=num );

//   print(sum);
// }


void main(){
  Map<String, int> marks = {
    "Math":90,
    "English":70,
    "Computer":95
  };

  marks.forEach((subject, score){
    print("$subject: $score");
    }
  );
}  