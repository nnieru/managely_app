import 'package:flutter/material.dart';

class BottomNavigationModel {
  final String title;
  final Icon icon;

  const BottomNavigationModel({required this.title, required this.icon});

  static List<BottomNavigationModel> items = [
    BottomNavigationModel(title: 'Home', icon: const Icon(Icons.home_rounded)),
    BottomNavigationModel(title: 'Task', icon: const Icon(Icons.task_rounded)),
    BottomNavigationModel(
        title: 'Summary', icon: const Icon(Icons.bar_chart_rounded)),
  ];
}
