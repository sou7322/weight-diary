import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:src/components/container_default.dart';
import 'package:src/components/date_selector.dart';
import 'package:src/components/weight_display.dart';
import 'package:src/constants/my_colors.dart';
import 'package:src/components/navigation_bar_default.dart';

import 'package:src/models/weight_record.dart';
import 'package:src/mocks/records.dart';

final today = DateUtils.dateOnly(DateTime.now());
const dateFormat = 'yyyy年M月d日';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  String? currentDate;
  WeightRecord? currentRecord;

  static final _dateFormatter = DateFormat(dateFormat);

  @override
  void initState() {
    var date = _formatDate(today);

    setState(() {
      currentDate = date;

      final mock = MockRecords.weight_records;
      final index = mock.length - 1;
      currentRecord = mock[index];
    });

    super.initState();
  }

  String _formatDate(DateTime dateTime) {
    return DateFormat(dateFormat).format(dateTime);
  }

  void backToPrevDate() {
    var date = _dateFormatter.parseStrict(currentDate!);
    var prevDate = date.add(const Duration(days: -1));

    setState(() {
      currentDate = _formatDate(prevDate);
    });
  }

  void forwardToNextDate() {
    var date = _dateFormatter.parseStrict(currentDate!);
    if (date == today) return;

    var nextDate = date.add(const Duration(days: 1));

    setState(() {
      currentDate = _formatDate(nextDate);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.turquoise,
        shadowColor: Colors.transparent,
        title: DateSelector(
          currentDate: currentDate!,
          onLeftArrowPressed: backToPrevDate,
          onRightArrowPressed: forwardToNextDate,
        ),
      ),
      body: ContainerDefault(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              WeightDisplay(currentRecord!),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {},
                child: const Text(
                  '記録する',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBarDefault(),
    );
  }
}
