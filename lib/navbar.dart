import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return (
        Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "/Users/owner/Desktop/ALLCDDOCUMENT/PROGRAM_APP/CODE_2025/FLUTTER/instagram_clone/assets/images/instagram.jpeg",
                width: 120.0,
                height: 56,
              ),

              const Row(
                children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    size: 24,
                  ),
                  SizedBox(width: 24),
                  Icon(Icons.message_sharp)
                ],
              )
            ],
          )
    );
  }
}