void main(){
  List<int> arr=[1,2,5,4,6];
  print(arr);
  print(arr[0]);
  arr[0]=4;
  print(arr);
  
  arr.add(4);
  arr.addAll([9,8,7]);
  print(arr);
  arr.insert(4, 4);
  print(arr);
  arr.insertAll(4, [4,4,4,4]);
  print(arr);

  arr.remove(4);
  print(arr);
  arr.removeAt(2);
  print(arr);
  arr.removeLast();
  print(arr);

  print(arr.length);
  print(arr.isEmpty);
  print(arr.first);
  print(arr.last);

  var name=["A","B","C"];
  print(name);
  print(name.runtimeType);

  dynamic name1=["A","B","C",1,2,4,1.55];
  print(name1);
  print(name1.runtimeType);
}