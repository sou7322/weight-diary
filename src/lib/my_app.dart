import 'package:flutter/material.dart';

import 'package:src/features/monthly_average_screen.dart';
import 'package:src/components/container_default.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final PageController _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return ContainerDefault(
      child: PageView(
        scrollDirection: Axis.vertical,
        controller: _pageController,
        children: const <Widget>[
          Center(child: Text('Top')),
          Center(child: MonthlyAverageScreen()),
          Center(child: Text('Settings')),
        ],
      ),
    );
  }
}
