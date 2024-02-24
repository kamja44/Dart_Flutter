import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/body.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const InstaCloneApp());
}

class InstaCloneApp extends StatelessWidget {
  const InstaCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.white,
          secondary: Colors.black,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const InstaCloneHome(),
    );
  }
}

class InstaCloneHome extends StatefulWidget {
  const InstaCloneHome({super.key});

  @override
  State<InstaCloneHome> createState() => _InstaCloneHomeState();
}

class _InstaCloneHomeState extends State<InstaCloneHome> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: index == 0
          ? AppBar(
              title: Text("Instagram",
                  style: GoogleFonts.lobsterTwo(
                      color: Colors.black, fontSize: 32)),
              centerTitle: false,
              actions: [
                // appBar 뒤쪽에 있는 아이콘들
                IconButton(
                  icon: const Icon(Icons.favorite_outline, size: 32),
                  onPressed: () => print("Tab Favorite"),
                ),
                IconButton(
                  icon: const Icon(CupertinoIcons.paperplane, size: 32),
                  onPressed: () => print("Tab paperplane"),
                ),
              ],
            )
          : null,
      body: InstaBody(index: index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex) => setState(() => index = newIndex),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 28), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 28), label: "Search"),
        ],
      ),
    );
  }
}
