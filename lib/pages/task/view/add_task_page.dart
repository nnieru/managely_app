import 'package:flutter/material.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  late TextEditingController _taskTitleTextController;
  late TextEditingController _taskDescrptionTextController;

  @override
  void initState() {
    super.initState();
    _taskTitleTextController = TextEditingController();
    _taskDescrptionTextController = TextEditingController();
  }

  @override
  void dispose() {
    _taskTitleTextController.dispose();
    _taskDescrptionTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Task'),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            spacing: 16.0,
            children: [],
          ),
        )));
  }
}
