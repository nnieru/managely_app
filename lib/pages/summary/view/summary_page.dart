import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary Page'),
      ),
      body: ElevatedButton(
          onPressed: () {
            context.go('/summary/second/10');
          },
          child: const Text('route to sec summary')),
    );
  }
}
