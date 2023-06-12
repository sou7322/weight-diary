import 'package:flutter/material.dart';

class DateSelector extends StatelessWidget {
  final String currentDate;
  final VoidCallback onLeftArrowPressed;
  final VoidCallback onRightArrowPressed;

  const DateSelector({
    super.key,
    required this.currentDate,
    required this.onLeftArrowPressed,
    required this.onRightArrowPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: onLeftArrowPressed,
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
        Text(
          currentDate,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        IconButton(
          onPressed: onRightArrowPressed,
          icon: const Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}