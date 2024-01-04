Container
- BoxDecoration 사용 시 외부에 color가 선언되어 있을 경우 에러가 발생한다.
    - 이럴 경우 외부에 선언된 color를 BoxDecoration안에 선언한다.
```
Container(
      width: double.infinity, // 좌우 끝을 모두 채운다.
      height: double.infinity, // 상하 끝을 모두 채운다.
      // color: Colors.red.shade200, // BoxDecoration 사용 시 안으로 이동시킨다.
      decoration: BoxDecoration(
            color: Colors.red.shade200, # BoxDecoration의 color
            border: Border.all(
                color: Colors.red, width: 5, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(6, 6),
                  blurRadius: 10,
                  spreadRadius: 10),
              BoxShadow(
                  color: Colors.blue,
                  offset: Offset(-6, -6),
                  blurRadius: 10,
                  spreadRadius: 10),
            ]),
      padding: EdgeInsets.fromLTRB(left, top, right, bottom), // pading 설정
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 10), // margin 설정
      child: Text("Hello Container"),
    );
```
