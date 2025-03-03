import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/addPost.dart';
import 'package:instagram_clone/pages/explore.dart';
import 'package:instagram_clone/pages/home.dart';
import 'package:instagram_clone/pages/reels.dart';
import 'package:instagram_clone/pages/profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      routes: {
        "/": (context) => Home(),
        "/explore": (context) => Explore(),
        "/addPost": (context) =>  AddPost(),
        "/reels": (context) =>  Reels(),
        "/profile": (context) =>  Profile(),
      },
      // home: Scaffold(
      //   body: Center(
      //     child: Home(),
      //     // child: Text('Hello World!'),

      //   ),
      // ),
    );
  }
}
