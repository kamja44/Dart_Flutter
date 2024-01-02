void main() {
  // bool
  bool isTrue = true;

  // int
  int num = 100;

  // double
  double num2 = 3.14;
  // double num3 = 3;

  // String
  String string = "Hello world";

  // Null형 null
  Null thisIsNull = null;

  print(isTrue);
  print(num);
  print(num2);
  print(string);
  print(thisIsNull);

  // 가변형 var / dynamic
  print("==============");
  var value = 1;
  print(value);
  value = 3;
  print(value);

  dynamic dynamicValue = 100;
  print(dynamicValue);
  dynamicValue = "Hello World";
  print(dynamicValue);
}
