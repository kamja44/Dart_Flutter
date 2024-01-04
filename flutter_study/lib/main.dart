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
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
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
          Container(
            width: 300,
            height: 120,
            color: Colors.grey,
            child: Text("Conatiner 4"),
          ),
        ],
      ),
    );
  }
}
