class TaskPriorityModel {
  final String id;
  final String title;
  final String duedate;

  const TaskPriorityModel({
    required this.id,
    required this.title,
    required this.duedate,
  });

  static List<TaskPriorityModel> getDummyTaskPriorityList() {
    return [
      TaskPriorityModel(
        id: '1',
        title: 'Task 1',
        duedate: '2022-01-01',
      ),
      TaskPriorityModel(
        id: '2',
        title: 'Task 2',
        duedate: '2022-01-02',
      ),
      TaskPriorityModel(
        id: '3',
        title: 'Task 3',
        duedate: '2022-01-03',
      ),
      TaskPriorityModel(
        id: '4',
        title: 'Task 4',
        duedate: '2022-01-04',
      ),
      TaskPriorityModel(
        id: '5',
        title: 'Task 5',
        duedate: '2022-01-05',
      ),
      TaskPriorityModel(
        id: '6',
        title: 'Task 6',
        duedate: '2022-01-06',
      ),
      TaskPriorityModel(
        id: '7',
        title: 'Task 7',
        duedate: '2022-01-07',
      ),
      TaskPriorityModel(
        id: '8',
        title: 'Task 8',
        duedate: '2022-01-08',
      ),
      TaskPriorityModel(
        id: '9',
        title: 'Task 9',
        duedate: '2022-01-09',
      ),
    ];
  }
}
