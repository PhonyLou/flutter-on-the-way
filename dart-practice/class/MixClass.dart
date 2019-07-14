import 'ClassExtends.dart';


class Coordinate with Point {

}

main() {
  var c = Coordinate();
  print(c is Point);
  c.printInfo();
}