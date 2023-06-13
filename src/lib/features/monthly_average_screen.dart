import 'package:flutter/material.dart';

class MonthlyAverageScreen extends StatefulWidget {
  const MonthlyAverageScreen({super.key});

  @override
  State<MonthlyAverageScreen> createState() => _MonthlyAverageScreenState();
}

class _MonthlyAverageScreenState extends State<MonthlyAverageScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'AVG',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  'in Jan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    decoration: TextDecoration.none,
                  ),
                ),
              ]),
              Text(
                '50',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 100,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          TextButton(
              onPressed: () {},
              child: const Text(
                'make a record',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}
