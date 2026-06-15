void main(){
  var anyone=5;//once the data type you assign so we cant change
  print(anyone);

  dynamic no_data_type=5;//once the data type is assign so we change it 
  no_data_type="sudarshan";// just like this
  print(no_data_type);

  const pi=3.14;//once the value is fixed so we cant change(compile time)
  //pi=1.1; //just like this
  print(pi);

  final age;//(same as const)(it can be assign in runtime)
  age=10;//like this 
  print(age);
}