import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomaPage extends StatelessWidget {
  const HomaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ElevatedButton(
          onPressed: () {
            context.go('/profile');
          },
          child: const Text('go to profile')),
    );
  }
}
