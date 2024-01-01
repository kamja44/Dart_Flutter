void main() {
  // class의 타입은 class의 이름을 따라간다.
  Point point = Point(1, 2);

  print(point);
  print(point.x);
  print(point.y);

  Point aPoint = Point(2, 5);
  Point bPoint = Point(10, 4);

  print(aPoint.x);
  print(aPoint.y);
  print(bPoint.x);
  print(bPoint.y);
}

// 클래스
// 클래스 기초
class Point {
  // 필드
  double? x;
  double? y;

  // 생성자
  Point(this.x, this.y);
}
