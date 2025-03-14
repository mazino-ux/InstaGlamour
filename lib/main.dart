import 'package:flutter/material.dart';
// import 'package:instagram_clone/bottom.dart';
import 'package:instagram_clone/pages/addpost.dart';
import 'package:instagram_clone/pages/explore.dart';
import 'package:instagram_clone/pages/home.dart';
import 'package:instagram_clone/pages/profile.dart';
import 'package:instagram_clone/pages/reels.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int? currIndex;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        setState(() {
          currIndex = value;
        });
      },
      items: const[
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/home.png'),
            size: 30,
            color: Colors.black,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/search.png'),
            size: 30,
            color: Colors.black,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/add.png'),
            size: 30,
            color: Colors.black,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/reel.png'),
            size: 30,
            color: Colors.black,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/user.png'),
            size: 30,
            color: Colors.black,
          ),
          label: "",
        ),
      ],
    ),
        body: IndexedStack(
          index: currIndex,
          children: [
            Home(),
            const Explore(),
            const AddPost(),
            const Reels(),
            const Profile(),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}