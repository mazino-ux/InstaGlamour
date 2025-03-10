import 'package:flutter/material.dart';
import 'package:instagram_clone/navbar.dart';
// ignore: unused_import
import 'package:instagram_clone/post.dart';
import 'package:instagram_clone/story.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<String> data = ['post2', 'post3', 'post4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        children: [
          // Instagram Header
          Navbar(),

          //Stories
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Story(),
                Story(),
                Story(),
                Story(),
                Story(),
                Story(),
                Story(),
                Story(),
              ],
            ),
          ),
          

          SizedBox(
            height: 20,
          ),

          //Posts
        ListView.builder(
          shrinkWrap: true, // ✅ Allows it to take the needed space
          physics: NeverScrollableScrollPhysics(), // ✅ Prevents conflict with parent ListView
          itemCount: 20,
          itemBuilder: (context, index) => Post(),
        ),
      
        ],
      ),
    );
  }
}