import 'dart:ffi';

import 'package:flutter/material.dart';

class TaskSummaryCard extends StatelessWidget {
  const TaskSummaryCard(
      {super.key,
      required this.id,
      required this.onTap,
      required this.icon,
      required this.iconColor,
      required this.title,
      this.value = '0'});
  final String id;
  final void Function(String id) onTap;
  final Icon icon;
  final Color iconColor;
  final String title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 0.2,
      color: Colors.white,
      child: InkWell(
        onTap: () {
          onTap(id);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                spacing: 16.0,
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: iconColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: icon,
                  ),
                  Text(
                    '$title ($value)',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
              )
            ],
          ),
        ),
      ),
    );
  }
}
