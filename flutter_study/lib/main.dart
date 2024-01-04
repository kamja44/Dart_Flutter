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
    return SingleChildScrollView(
      child: Column(
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
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
        ],
      ),
    );
  }
}
