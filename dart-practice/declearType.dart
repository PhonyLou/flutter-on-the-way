main() {
  var arr = <int>[1,2,3];
  var arr2 = new List<int>.of([4,5,6]);
  arr2.add(7);
  arr2.forEach((v) => print('${v}'));
  print(arr2 is List);
  print(arr2 is List<int>);
  print(arr2 is List<String>);
}