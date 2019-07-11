main() {
  var arr = ["Tom", "Jerry", "Jack"];
  var arr2 = List.of([1,2,3]);
  arr2.add(4);

  arr2.forEach(
    (v) => print("${v}")
  );

  arr.forEach(
    (v) => print('$v')
  );
}