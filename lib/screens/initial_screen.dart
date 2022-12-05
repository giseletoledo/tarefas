import 'package:flutter/material.dart';

import '../components/task.dart';

class InitialScreen extends StatefulWidget {

  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
              name: 'Aprender Flutter',
              foto:
              'assets/images/dash.png',
              dificuldade: 3,
            ),
            Task(
              name: 'Andar de bike',
              foto:
              'assets/images/bike.jpg',
              dificuldade: 1,
            ),
            Task(
              name: 'Meditar',
              foto:
              'assets/images/meditar.webp',
              dificuldade: 2,
            ),
            Task(
              name: 'Ler',
              foto:
              'assets/images/book.png',
              dificuldade: 4,
            ),
            Task(
              name: 'Jogar',
              foto:
              'assets/images/play.jpg',
              dificuldade: 1,
            ),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}