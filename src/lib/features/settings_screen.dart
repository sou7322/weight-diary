import 'package:flutter/material.dart';

import 'package:src/constants/my_colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  "I'm",
                  style: TextStyle(
                      color: MyColors.white,
                      fontSize: 20,
                      decoration: TextDecoration.none),
                ),
              ),
              Text('Jane Doe',
                  style: TextStyle(
                      color: MyColors.white,
                      fontSize: 30,
                      decoration: TextDecoration.none)),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text("I'm",
                  style: TextStyle(
                      color: MyColors.white,
                      fontSize: 20,
                      decoration: TextDecoration.none)),
              Text("160",
                  style: TextStyle(
                      color: MyColors.white,
                      fontSize: 30,
                      decoration: TextDecoration.none)),
              Text("cm tall.",
                  style: TextStyle(
                      color: MyColors.white,
                      fontSize: 20,
                      decoration: TextDecoration.none)),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'and',
            style: TextStyle(
                color: MyColors.white,
                fontSize: 20,
                decoration: TextDecoration.none),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.baseline,
          //   textBaseline: TextBaseline.alphabetic,
          //   children: [
          //     Column(
          //       children: [
          //         Text(
          //           'My target',
          //           style: TextStyle(fontSize: 20),
          //         ),
          //         Text(
          //           'weight is',
          //           style: TextStyle(fontSize: 20),
          //         ),
          //       ],
          //     ),
          //     Text(
          //       '48',
          //       style: TextStyle(fontSize: 30),
          //     ),
          //     Text(
          //       'kg',
          //       style: TextStyle(fontSize: 20),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
