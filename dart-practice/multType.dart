main() {
  var arr = [1,2,'s'];
  arr.forEach(
    (v) => print('The value is ${v}, and the type is ${v.runtimeType}')
  );
}