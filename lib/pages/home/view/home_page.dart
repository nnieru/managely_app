import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:managely/commons/widgets/section_title.dart';
import 'package:managely/commons/widgets/task_summary_card.dart';

class HomaPage extends StatelessWidget {
  const HomaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            'Hi Nathaniel!',
            style: TextStyle(color: Colors.white),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(60),
          )),
          elevation: 1,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(title: 'Summary'),
                    TaskSummaryCard(
                      id: 'notstarted',
                      onTap: (id) {
                        context.go('/task', extra: id);
                      },
                      icon: const Icon(
                        Icons.flag_rounded,
                        color: Colors.white,
                      ),
                      iconColor: Colors.blueGrey,
                      title: 'Not Started',
                      value: '2',
                    ),
                    TaskSummaryCard(
                      id: 'inprogress',
                      onTap: (id) {
                        context.go('/task', extra: id);
                      },
                      icon: const Icon(
                        Icons.hourglass_bottom_rounded,
                        color: Colors.white,
                      ),
                      iconColor: Colors.orange,
                      title: 'In Progress',
                      value: '1',
                    ),
                    TaskSummaryCard(
                      id: 'duedate',
                      onTap: (id) {
                        context.go('/task', extra: id);
                      },
                      icon: const Icon(
                        Icons.warning_rounded,
                        color: Colors.white,
                      ),
                      iconColor: Colors.red,
                      title: 'Due Date',
                      value: '1',
                    ),
                    TaskSummaryCard(
                      id: 'completed',
                      onTap: (id) {
                        context.go('/task', extra: id);
                      },
                      icon: const Icon(
                        Icons.check_box_rounded,
                        color: Colors.white,
                      ),
                      iconColor: Colors.green,
                      title: 'Completed',
                      value: '3',
                    ),
                  ],
                ),
              ),
              SectionTitle(title: 'Highly Priority'),
              SectionTitle(title: 'Shortcut')
            ],
          ),
        )));
  }
}
