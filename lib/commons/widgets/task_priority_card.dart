import 'package:flutter/material.dart';

class TaskPriorityCard extends StatelessWidget {
  const TaskPriorityCard(
      {super.key,
      required this.id,
      required this.title,
      required this.duedate,
      required this.onTap});
  final String id;
  final String title;
  final String duedate;
  final Function(String id) onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        elevation: 0.3,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {
            onTap(id);
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.45,
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Icon(
                    Icons.timer_rounded,
                    color: Colors.white,
                  ),
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  duedate,
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ));
  }
}
