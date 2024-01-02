void main() {
  /** for
   * for (기준 변수; 조건식; 가변치){
   * 
   * }
   * 
   */

  /** for 예제
   for (int i = 0; i < 10; i++) {
    print("Running For Index $i");
  }
   */

  /** for in
   * for(단일 변수 in 컬렉션 (List / Set / Map)){
   *  컬랙션 내에 요소들의 수 / 변수 만큼 사용 될 반복문
   * }
   * 
   */

  /** for in 예제
  List<int> indexes = [0, 1, 2, 3, 4, 5];
  // int 혹은 final 둘다 사용 가능 단, for에서는 final 자주 사용
  for (final index in indexes) {
    print("Running For Index $index");
  }
   */

  /** while
   * while(조건식){
   *  조건식이 참일 경우 실행 될 반복문
   * }
   */

  /*
  bool isRunning = true;
  int count = 0;

  while (isRunning) {
    if (count >= 5) {
      isRunning = false;
    }
    count++;

    print("While is Running $count");
  }
   */

  /** do while
   * do{
   *  선행 진행 코드
   * } while (조건);
   */

  int num = 0;
  do {
    num++;

    if (num == 4) {
      continue;
    }
    print("Running Do While $num");
  } while (num < 10);
}
