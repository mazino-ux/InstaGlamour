import 'package:flutter/material.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
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
    );
  }
}