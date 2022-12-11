import 'package:flutter/material.dart';

import '../components/task.dart';

class TaskInherited extends InheritedWidget {
   TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task(
      name: 'Aprender Flutter',
      foto: 'assets/images/dash.png',
      dificuldade: 3,
    ),
    Task(
      name: 'Andar de bike',
      foto: 'assets/images/bike.jpg',
      dificuldade: 1,
    ),
    Task(
      name: 'Meditar',
      foto: 'assets/images/meditar.webp',
      dificuldade: 2,
    ),
    Task(
      name: 'Ler',
      foto: 'assets/images/book.png',
      dificuldade: 4,
    ),
    Task(
      name: 'Jogar',
      foto: 'assets/images/play.jpg',
      dificuldade: 1,
    ),
  ];

  void newTask(String name, String photo, int difficulty){
    taskList.add(Task(name: name, foto: photo, dificuldade: difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

//Se muda a quantidade de elementos da lista atualiza o estado, comparando o velho widget e o atual
  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
