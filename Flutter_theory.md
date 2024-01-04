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


Placeholder
- 이 위치에 위젯이 오니 지정한 크기만큼 자리를 차지한다.

Column
- 수평길이에 대해서만 값을 갖는다. 즉, 수직축에 대한 값은 없다.
    - mainAxisAlignment => Column의 메인인 수직의 값을 조정한다.
    - crossAxisAlignment => Column의 cross인 수평의 값을 조정한다.
```
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget을 상하로 배치하기"),
          centerTitle: true,
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        // mainAxisSize: MainAxisSize.max, // mainAxisSize => Column 들의 최대 높이, 최소높이를 지정할 수 있다.
        mainAxisAlignment: MainAxisAlignment
            .center, // mainAxisAlignment => Column들의 수직축의 위치를 조정한다.
        crossAxisAlignment:
            CrossAxisAlignment.center, // Column 들의 수평축의 위치를 조정한다.
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            child: Text("Container 1"),
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
            child: Text("Container 2"),
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            child: Text("Container 3"),
          ),
        ],
      ),
    );
  }
}

```

Row
- 위의 코드에서 Column을 Row로 변경
- 수직축에 대해서만 값을 갖는다. 즉, 수평축에 대해선 값을 갖지 않는다.
    - mainAxisSize => Row의 메인인 수평축에 대한 값을 갖는다.
    - crossAxisAlignment => Row의 cross축인 수직축에 대한 값을 갖는다.

SingleChildScrollView
- 스크롤이 가능하게 한다.
- ScrollDirection 옵션을 이용하여 수직축으로 스크롤할지, 수평축으로 스크롤할지 지정이 가능하다.
    - Column이면 수직축 scrollDirection: Axis.vertical
    - Row면 수평축 scrollDirection: Axis.horizontal
```
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget Scroll"),
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
        ],
      ),
    );
  }
}

```