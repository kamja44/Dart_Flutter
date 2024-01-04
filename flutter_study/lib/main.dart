import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Study to Container"),
        ),
        body: CustomContainer(),
      ),
    ),
  );
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.red.shade200,
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
        child: Center(
          child: Container(
            color: Colors.yellow,
            child: Text("Hello Container"),
          ),
        ),
      ),
    );
  }
}
