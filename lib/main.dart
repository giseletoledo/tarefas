import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tasks App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            leading: Container(),
            title: const Text('Tarefas'),
          ),
          body: ListView(
            children: const [
              Task(
                  name: 'Aprender Flutter',
                  foto: 'https://pbs.twimg.com/media/Eu7e3mQVgAImK2o?format=png&name=large'),
              Task(name: 'Andar de bike', foto: 'https://3.bp.blogspot.com/-GXGnY7nIpM0/Wd0HYrIJuEI/AAAAAAAAA3E/afmo9jI9H3UwAb9CzjkT4Qt4PHPYOJtUwCLcBGAs/s1600/canstockphoto6512833.jpg'),
              Task(name: 'Meditar', foto: 'https://catracalivre.com.br/wp-content/uploads/sites/19/2017/05/Medita%C3%A7%C3%A3o-iStock.jpg'),
              Task(name: 'Ler', foto:'https://www.plannetaeducacao.com.br/portal/arquivo/thumb/artigos/eff9a21305e73bb387a7_990x600_0_0_1_1.png'),
              Task(name: 'Jogar', foto:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4Tyae_jwwSB9KLE5AKOX7Kl0A5eLN52-Yuw&usqp=CAU'),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
          ),
        ));
  }
}

class Task extends StatefulWidget {
  final String name;
  final String foto;

  const Task({Key? key, required this.name, required this.foto})
      : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    //int nivel = 0; Aqui atualiza tod o tempo e fica 0
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                        child: Image.network(
                          widget.foto,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                          width: 200,
                          child: Text(
                            widget.name,
                            style: const TextStyle(
                              fontSize: 24,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )),
                      SizedBox(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });
                              print(nivel);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Icon(Icons.arrow_drop_up),
                                Text(
                                  'Up',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 200,
                          child: LinearProgressIndicator(
                            color: Colors.white,
                            value: nivel / 10,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Nivel: $nivel',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
