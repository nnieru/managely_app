import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key, this.filterId = ""});
  final String? filterId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          context.go('/task/create');
        },
        child: const Icon(
          Icons.add_rounded,
          color: Colors.white,
        ),
      ),
      body: Container(),
    );
  }
}
