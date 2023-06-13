import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final PageController _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: _pageController,
      children: const <Widget>[
        Center(child: Text('Top')),
        Center(child: Text('Middle')),
        Center(child: Text('Bottom')),
      ],
    );
  }
}
