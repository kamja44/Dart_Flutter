void main() {
  int num1 = 10;
  /** try catch finally
  try {
    // 예외 발생 가능 코드
    // print(10 ~/ 0); // ~/ = 나눈 값의 몫을 출력
    print(10 / 0);
  } catch (error, stack) {
    // 예외 발생시 동작하는 코드
    print(error);
    print(stack); // error가 발생한 순간을 찍는다
  } finally {
    // 예외가 발생하든, 발생하지 않든 무조건 실행
    print("예외 처리 통과");
  }
   */

  /** try on
  try {
    print(10 ~/ 0);
    // Error를 세부적으로 잡을 때 on 사용
  } on UnsupportedError catch (error, stack) {
    print("~/ 해당 연산자는 0으로 나눌 수 없습니다.");
  } on TypeError catch (error, stack) {
    print("Null 값이 참조 되었습니다.");
  } catch (error, stack) { // catch는 모든 에러 잡기
    print("$error");
  }
   */

  try {
    throw Exception("Unknown Error"); // 예외를 만들어서 던진다. 즉, 에러가 발생한다.
  } on UnsupportedError catch (error, stack) {
    print("~/ 해당 연산자는 0으로 나눌 수 없습니다.");
  } on TypeError catch (error, stack) {
    print("Null 값이 참조 되었습니다.");
  } catch (error, stack) {
    // catch는 모든 에러 잡기
    // print("$error");
    rethrow; // 이미 잡은 에러를 다시 던지기 즉, main 밖으로 에러를 빼낸다.
    // 즉, 프로그램 동작이 안된다.
  }
}
