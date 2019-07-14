class Point {
  num x, y, z;
  // 初始化变量z
  Point(this.x, this.y) : z=0;
  // 调用其他构造函数
  Point.bottom(num x) : this(x, 0);

  void printInfo() => print("($x, $y, $z)");
  
}

main() {
  var p = Point.bottom(100);
  p.printInfo();
}