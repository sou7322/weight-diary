import 'package:flutter/material.dart';

class NavigationBarDefault extends StatelessWidget {
  const NavigationBarDefault({super.key});

  @override
  Widget build(context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.today),
          label: 'Calendar',
        ),
      ],
    );
  }
}