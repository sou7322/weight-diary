import 'package:flutter/material.dart';

import 'package:src/models/weight_record.dart';
import 'package:src/constants/my_colors.dart';

class WeightDisplay extends StatelessWidget {
  final WeightRecord weightRecord;

  const WeightDisplay(this.weightRecord, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          weightRecord.weight.toString(),
          style: TextStyle(
            color: MyColors.white,
            fontSize: 100,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          'kg',
          style: TextStyle(
            color: MyColors.white,
            fontSize: 50,
          ),
        ),
      ],
    );
  }
}
