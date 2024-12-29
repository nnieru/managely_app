import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:managely/pages/home/view/home_page.dart';
import 'package:managely/pages/main/model/bottom_navigation_model.dart';
import 'package:managely/pages/summary/view/summary_page.dart';
import 'package:managely/pages/task/view/task_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [HomePage(), TaskPage(), SummaryPage()];

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: BottomNavigationModel.items.map((item) {
            return BottomNavigationBarItem(icon: item.icon, label: item.title);
          }).toList(),
          currentIndex: navigationShell.currentIndex,
          onTap: (index) => navigationShell.goBranch(index)),
    );
  }
}
