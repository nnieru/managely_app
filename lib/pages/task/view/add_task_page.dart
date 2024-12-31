import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Add Task',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 16.0,
            children: [
              TextField(
                decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Text('Task Name'),
                    hintText: 'e.g. Learn Python',
                    border: OutlineInputBorder()),
              ),
              TextField(
                decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Text('Task Name'),
                    hintText:
                        'e.g. ${DateFormat.yMMMMEEEEd().format(DateTime.now())}',
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.none,
                onTap: () async {
                  await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2018),
                      lastDate: DateTime(2030));
                },
              ),
              TextField(
                decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Text('Task Priority'),
                    hintText: 'e.g. Learn Python',
                    border: OutlineInputBorder()),
              ),
              TextField(
                decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Text('description (optional)'),
                    border: OutlineInputBorder()),
                // expands: true,
                keyboardType: TextInputType.multiline,

                maxLines: 4,
                // maxLines: null,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
