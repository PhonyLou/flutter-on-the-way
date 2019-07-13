// 可选命名参数，可以传入或者不传入，但是一旦传入其变量名一定是指定的
void enable1Flags({bool bold, bool hidden}) => print("$bold, $hidden");

void enable2Flags({bool bold = true, bool hidden = true}) => print("带默认值的可选参数：$bold, $hidden");

void enable3Flags(bool bold, [bool hidden]) => print("可忽略参数：bold=$bold, hidden=$hidden");
void enable4Flags([bool hidden = false]) => print("可忽略参数：hidden=$hidden");

main() {
  // enable1Flags(true, false); 编译报错
  enable1Flags(bold: true, hidden: false);
  // 一个参数
  enable1Flags(bold: true);
  // 不传参
  enable1Flags();

  enable2Flags(bold: false, hidden: false);
  // 一个参数
  enable2Flags(bold: false);
  // 不传参
  enable2Flags();

  enable3Flags(false, false);
  // 一个参数
  enable3Flags(false);

  enable4Flags();
  enable4Flags(true);
}