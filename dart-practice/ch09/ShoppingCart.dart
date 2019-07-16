class Meta {
  double price;
  String name;
  Meta(this.name, this.price);
}

class Item extends Meta{
  Item(name, price) : super(name, price);
  Item operator+(Item item) => Item(name + item.name, price + item.price);
}

class ShoppingCart extends Meta with PrintHelper{
  
  DateTime date;
  String code;
  List<Item> bookings;
  
  double get price => bookings.reduce((value, element) => value + element).price;
  ShoppingCart({name}) : this.withCode(name : name, code : null);
  ShoppingCart.withCode({name, this.code}) : date = DateTime.now(), super(name, 0);
  getInfo() => '''
  购物车信息：
  -------------------
    用户名： $name
    优惠码： ${code ?? " 没有 "}
    总价： $price
    Date： $date
  ''';
}

abstract class PrintHelper {
  printInfo() => print(getInfo());
  getInfo();
}

main() {
  ShoppingCart sc = ShoppingCart.withCode(name:'张三', code:'123456');
  sc.bookings = [Item('苹果', 10.0), Item('鸭梨', 20.0)];
  sc.printInfo();
  //print(sc.getInfo());

  ShoppingCart sc2 = ShoppingCart(name: '李四');
  sc2.bookings = [Item('香蕉', 15.0), Item('西瓜', 40.0)];
  //print(sc2.getInfo());
  sc2.printInfo();

  ShoppingCart(name: '李四2')
  ..bookings = [Item('香蕉', 15.0), Item('西瓜', 40.0)]
  ..printInfo();  
}