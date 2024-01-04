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

Flex
- 반응형 Display 만들기
- Flexible Widget 사용
    - flex 옵션을 사용하여 전체 비율에서 몇%를 사용할지 지정할 수 있다.
    - 안의 객체의 size에 따라 비율이 줄어들 수 있다.
```
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget을 비율로 배치하기(반응형 Display)"),
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
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.red,
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.blue,
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Flexible(
          flex: 4,
          child: Container(
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}
```


Expanded
- Flexible과 마찬가지로 반응형 Display를 제작할 때 사용한다.
    - 내부 객체의 크기(높낮이)와 상관없이 비율만 따진다.
- 만일, 스크롤 기능을 추가했을 때 Expanded를 사용할 경우 에러가 발생한다.
    - Expanded의 경우 객체의 크기(높낮이)와 상관없이 비율만 따지는데 스크롤 기능을 추가할 경우 객체의 크기를 모르기에 에러 발생

```
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("반응형 Display with Expanded"),
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
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.red,
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            height: 100,
          ),
        ),
        Flexible(
          child: Container(
            color: Colors.red,
            height: 100,
          ),
        ),
      ],
    );
  }
}

```

- 에러가 발생하는 경우(스크롤)
```
children: [
    Container(
    width: 100,
    height: 100,
    color: Colors.purple,
    margin: EdgeInsets.symmetric(vertical: 8),
    ),
    Expanded(
    child: Container(
        color: Colors.black,
    ),
    ),
    Container(
    width: 100,
    height: 100,
    color: Colors.purple,
    margin: EdgeInsets.symmetric(vertical: 8),
    ),
]
```
- 이러한 경우 에러가 발생한다.

Stack
- Widget을 쌓는다.
- Stack은 뒤에 선언한 객체일수록 앞에 쌓이게 된다.
- Positioned Widget을 이용하여 child의 위치를 조작할 수 있다.
    - absolute와 동일한 개념
    - 수치를 이용하여 직접 조작
- Align Widget을 이용하여 Child의 위치를 조작할 수 있다.
    - x, y의 %를 직접 줄 수 있고, 미리 정의된 값을 이용하여 조작할 수 있다.
```
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Widget을 겹겹히 쌓아 배치하기")),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 500,
          height: 500,
          color: Colors.black,
        ),
        Container(
          width: 400,
          height: 400,
          color: Colors.red,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blue,
          ),
        ),
        Positioned(
          bottom: 50,
          right: 30,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}

```