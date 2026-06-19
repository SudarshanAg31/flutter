void main(){
  //null safety insure that if the value is going to null so the program is not going to crash
  // String name="sudarshan"; //this is correct
  // String name=null;//it shows error(compile-time)

  // if we use null safety(?) so we overcome this problem
  // String? name=null;//valid
  // print(name);//output will be null

  // if we sure that value is not null(!)Null check operator
  // String? name=null;//if null
  // print(name!.length);//runtime error

  // if we use the (?.) Null-Aware operator so there is no compile error or no runtime error
  // String? name;
  // print(name?.length);//output is null

  //if we use (??) Default value operator so if value is null it should be guest or name
  // String? name;
  // print(name??"Guest");//output should be "Guest"
  // name="sudarshan";
  // print(name??"Guest");//output should be "name"

}