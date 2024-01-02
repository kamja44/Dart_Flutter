void main() {
  /** async await Future
  Future<void> todo(int second) async {
    await Future.delayed(Duration(seconds: second));
    print("ToDo Done in $second seconds");
  }

  todo(3); // 2번 째
  todo(1); // 가장 먼저
  todo(5); // 3번 째 실행
   */

  Stream<int> todo() async* {
    // Stream은 지속적인 동작 즉, 끊기지 않아야 한다.
    int counter = 0;
    while (counter <= 10) {
      counter++;
      await Future.delayed(Duration(seconds: 1));
      print("TODO is Running $counter");
      yield counter; // Stream에 counter를 전달 즉, return과 비슷한 동작
    }
    print("TODO is Done");
  }

  todo().listen((event) {}); // listen을 이용하여 이벤트 발생
}
