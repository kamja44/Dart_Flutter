import 'package:flutter/material.dart';
import 'package:flutter_study/screen/new_page.dart';
import 'package:go_router/go_router.dart';

const assetsPath = "assets/images";
const bannerImage = "$assetsPath/빵빵.jpg";

void main() {
  runApp(
    MaterialApp(
      home: const HomeWidget(),
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.indigo,
          secondary: Colors.green,
          tertiary: Colors.yellow,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
        ),
      ),
    ),
  );
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Theme"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Press Count"),
            Text("$count"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
