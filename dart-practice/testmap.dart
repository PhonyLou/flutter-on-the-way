var map = {"name":"tom", "sex": "male"};
var map2 = new Map();


main() {
  map2["userid"] = "heel";
  map2["guid"] = "gg";

  map.forEach(
    (k,v) => print('${k}:${v}')
  );

  map2.forEach(
    (k,v) => print('${k}:${v}')
  );
}