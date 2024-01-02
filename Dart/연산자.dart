void main() {
  // Null 처리 연산자
  int? num1;

  print(num1); // null

  int num2 = 10;

  // ??연산자 => num1의 값이 null이라면, 우변의 값을 사용하겠다.
  print((num1 ?? 5) + num2);

  num1 = 5;

  // print(num1! + num2);
}
