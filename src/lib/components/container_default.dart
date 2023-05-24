import 'package:flutter/material.dart';
import 'package:src/constants/my_colors.dart';

class ContainerDefault extends StatelessWidget {
  final Widget child;

  const ContainerDefault(this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            MyColors.turquoise,
            MyColors.pistachioGreen,
          ],
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 60,
      ),
      child: child,
    );
  }
}
