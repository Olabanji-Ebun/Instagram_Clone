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
          size: 60,
          color: Colors.blueGrey,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/icons/search.png'),
          size: 60,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/icons/add.png'),
          size: 60,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/icons/reel.png'),
          size: 60,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/icons/user.png'),
          size: 60,
        ),
        label: "",
      ),
      ],
    );
  }
}