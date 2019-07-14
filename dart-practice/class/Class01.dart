class Point {
  num x, y;
  static num factor = 0;
  Point(this.x, this.y);
  void printInfo() => print("($x, $y)");
  static void printZValue() => print("$factor");
}

main() {
  var p = Point(100, 200);
  p.printInfo();
  Point.factor = 10;
  Point.printZValue();
}