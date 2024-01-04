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
