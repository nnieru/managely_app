import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key, this.filterId = ""});
  final String? filterId;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Task Page with filterId: $filterId'));
  }
}
