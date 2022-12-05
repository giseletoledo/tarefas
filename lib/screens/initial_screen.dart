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
        duration: Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
              name: 'Aprender Flutter',
              foto:
              'https://pbs.twimg.com/media/Eu7e3mQVgAImK2o?format=png&name=large',
              dificuldade: 3,
            ),
            Task(
              name: 'Andar de bike',
              foto:
              'https://3.bp.blogspot.com/-GXGnY7nIpM0/Wd0HYrIJuEI/AAAAAAAAA3E/afmo9jI9H3UwAb9CzjkT4Qt4PHPYOJtUwCLcBGAs/s1600/canstockphoto6512833.jpg',
              dificuldade: 1,
            ),
            Task(
              name: 'Meditar',
              foto:
              'https://catracalivre.com.br/wp-content/uploads/sites/19/2017/05/Medita%C3%A7%C3%A3o-iStock.jpg',
              dificuldade: 2,
            ),
            Task(
              name: 'Ler',
              foto:
              'https://www.plannetaeducacao.com.br/portal/arquivo/thumb/artigos/eff9a21305e73bb387a7_990x600_0_0_1_1.png',
              dificuldade: 4,
            ),
            Task(
              name: 'Jogar',
              foto:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4Tyae_jwwSB9KLE5AKOX7Kl0A5eLN52-Yuw&usqp=CAU',
              dificuldade: 1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: Icon(Icons.remove_red_eye),
      ),
    );
  }
}