import 'package:flutter/material.dart';
import 'package:src/constants/my_colors.dart';

class ContainerDefault extends StatelessWidget {
  final Widget child;

  const ContainerDefault({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            MyColors.turquoise,
            MyColors.pistachioGreen,
          ],
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      child: child,
    );
  }
}
