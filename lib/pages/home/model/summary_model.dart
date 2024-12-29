import 'package:flutter/material.dart';

class SummaryModel {
  final String id;
  final String title;
  final String value;
  final IconData icon;
  final Color iconColor;

  const SummaryModel({
    required this.id,
    required this.title,
    required this.value,
    required this.icon,
    required this.iconColor,
  });

  static List<SummaryModel> getDummySummaryList() {
    return [
      SummaryModel(
        id: 'notstarted',
        title: 'Not Started',
        value: '2',
        icon: Icons.flag_rounded,
        iconColor: Colors.blueGrey,
      ),
      SummaryModel(
        id: 'inprogress',
        title: 'In Progress',
        value: '1',
        icon: Icons.hourglass_bottom_rounded,
        iconColor: Colors.orange,
      ),
      SummaryModel(
        id: 'duedate',
        title: 'Due Date',
        value: '1',
        icon: Icons.warning_rounded,
        iconColor: Colors.red,
      ),
      SummaryModel(
        id: 'completed',
        title: 'Completed',
        value: '3',
        icon: Icons.check_circle_rounded,
        iconColor: Colors.green,
      ),
    ];
  }
}
