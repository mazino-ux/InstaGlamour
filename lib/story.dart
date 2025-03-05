import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          // border: Border(),
          color: Color.fromARGB(255, 106, 9, 124),
          shape: BoxShape.circle
        ),
      ),
    );
  }
}