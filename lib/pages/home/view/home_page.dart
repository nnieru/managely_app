import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managely/pages/home/bloc/bottom_navigation/bottom_navigation_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int _selectedTabIndex =
        context.watch<BottomNavigationCubit>().state.currentIndex;

    return Scaffold(
      body: BlocProvider(
          create: (_) => BottomNavigationCubit(), child: Container()),
    );
  }
}
