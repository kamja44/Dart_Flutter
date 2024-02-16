import 'package:flutter/material.dart';
import 'package:flutter_study/screen/new_page.dart';

const assetsPath = "assets/images";
const bannerImage = "$assetsPath/빵빵.jpg";

void main() {
  runApp(const MaterialApp(
    home: HomeWidget(),
  ));
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter에서 화면 이동하기"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const NewPage();
                },
              ),
            );
          },
          child: const Text("Go to Page"),
        ),
      ),
    );
  }
}
