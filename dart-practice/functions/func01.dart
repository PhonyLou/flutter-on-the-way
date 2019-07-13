bool isZero(int number) {
  return number == 0;
}

bool isZeroSimple(int number) => number == 0;

void printInfo(int number, Function check) {
  print("$number is Zero: ${check(number)}");
}

void printInfoSimple(int number, Function check) => print("$number is Zero: ${check(number)}");


Function f = isZero;
Function f2 = isZeroSimple;
int x = 10;
int y = 0;

main() {
  printInfo(x, f);
  printInfo(y, f);

  printInfoSimple(x, f2);
  printInfoSimple(y, f2);
}