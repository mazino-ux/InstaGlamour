import 'package:flutter/material.dart';

class Reels extends StatefulWidget {
  const Reels({super.key});

  @override
  State<Reels> createState() => _ReelsState();
}


class _ReelsState extends State<Reels> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation radiusAnimation;

   @override
  void initState() {
    super.initState();
    _controller = 
        AnimationController(vsync: this, duration: const Duration(seconds:3));
 
    radiusAnimation = 
    Tween<double>(begin: 0.0, end: 120.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(120),
          color: Colors.deepPurple),
        width: 200,
        height: 200,),
    )
    );
  }
}