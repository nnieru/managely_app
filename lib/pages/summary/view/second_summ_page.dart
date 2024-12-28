import 'package:flutter/material.dart';

class SecondSummPage extends StatelessWidget {
  const SecondSummPage({super.key, required this.id});

  final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secopnd summary  Page'),
      ),
      body: Center(child: Text('passed id: $id')),
      bottomNavigationBar: null,
    );
  }
}
