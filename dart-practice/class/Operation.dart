import 'ClassExtends.dart';

var p = Point();

class Vector {
  num x, y;
  Vector(this.x, this.y);
  // 自定义运算符计算向量相加
  Vector operator+(Vector v) => Vector(x + v.x, y + v.y);
  // 覆写相等运算发，判断向量相等
  bool operator==(dynamic v) => x == v.x && y == v.y;
}

main() {
  p?.printInfo();

  final x = Vector(3, 3);
  final y = Vector(2, 2);
  final z = Vector(1, 1);
  print(x == (y + z));
}