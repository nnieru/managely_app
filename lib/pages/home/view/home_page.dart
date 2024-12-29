import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:managely/commons/widgets/section_title.dart';
import 'package:managely/commons/widgets/task_priority_card.dart';
import 'package:managely/commons/widgets/task_summary_card.dart';
import 'package:managely/pages/home/model/summary_model.dart';
import 'package:managely/pages/home/model/task_priority_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Hi Nathaniel!',
          style: TextStyle(color: Colors.white),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(60),
          ),
        ),
        elevation: 1,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SectionContainer(
                title: 'Priority',
                child: PriorityList(),
              ),
              SectionContainer(
                title: 'Summary',
                child: SummaryList(),
              ),
              SectionContainer(
                title: 'Shortcut',
                child: ShortcutCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionContainer extends StatelessWidget {
  final String title;
  final Widget child;

  const SectionContainer({
    required this.title,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: title),
          child,
        ],
      ),
    );
  }
}

class SummaryList extends StatelessWidget {
  const SummaryList({super.key});

  @override
  Widget build(BuildContext context) {
    final summaryList = SummaryModel.getDummySummaryList();
    return ListView.builder(
      itemBuilder: (context, index) {
        final summary = summaryList[index];
        return TaskSummaryCard(
          key: ValueKey(summary.id),
          icon: Icon(summary.icon, color: Colors.white),
          title: summary.title,
          value: summary.value,
          onTap: (id) => context.go('/task', extra: id),
          id: summary.id,
          iconColor: summary.iconColor,
        );
      },
      itemCount: summaryList.length,
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}

class PriorityList extends StatelessWidget {
  const PriorityList({super.key});

  @override
  Widget build(BuildContext context) {
    final priorityList = TaskPriorityModel.getDummyTaskPriorityList();
    return SizedBox(
      height: 160,
      child: ListView.builder(
        itemBuilder: (context, index) {
          final priority = priorityList[index];
          return TaskPriorityCard(
            key: ValueKey(priority.id),
            id: priority.id,
            title: priority.title,
            duedate: priority.duedate,
            onTap: (id) => context.go('/task/detail/$id'),
          );
        },
        itemCount: priorityList.length,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
      ),
    );
  }
}

class ShortcutCard extends StatelessWidget {
  const ShortcutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 0.3,
      color: Colors.white,
      child: InkWell(
        onTap: () => context.go('/task'),
        child: const ListTile(
          leading: Icon(Icons.edit_document),
          title: Text('Manage your task Task'),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
    );
  }
}
