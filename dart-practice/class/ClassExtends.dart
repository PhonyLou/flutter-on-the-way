class Point {
  num x = 0, y = 0;
  void printInfo() => print("($x, $y)");
}

class Vector extends Point {
  num z = 0;
  @override
  void printInfo() => print('($x, $y, $z)');
}

class Coordinate implements Point {
  num x = 1, y = 1;

  @override
  void printInfo() => print('($x, $y)');
}

main() {
  var vector = Vector();
  vector
    ..x = 1
    ..y = 2
    ..z = 3;
  vector.printInfo();

  var coordinate = Coordinate();
  coordinate
    ..x = 2
    ..y = 2;
  coordinate.printInfo();

  print(coordinate is Point);
  print(coordinate is Coordinate);

  print(vector is Point);

}