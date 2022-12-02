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
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tarefas'),
          ),
          body: ListView(
            children: [
              Task(name: 'Aprender Flutter'),
              Task(name: 'Andar de bike'),
              Task(name: 'Meditar'),
              Task(name: 'Aprender Flutter'),
              Task(name: 'Andar de bike'),
              Task(name: 'Meditar'),
              Task(name: 'Aprender Flutter'),
              Task(name: 'Andar de bike'),
              Task(name: 'Meditar'),
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){},),
        )
    );
  }
}

class Task extends StatefulWidget {

  final String name;

  const Task({Key? key, required this.name}) : super(key: key);

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
              height: 140,),
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
                      ),
                      Container(
                          width: 200,
                          child: Text(widget.name, style: TextStyle(
                            fontSize: 24,
                            overflow: TextOverflow.ellipsis,
                          ),)),
                      ElevatedButton(
                          onPressed: (){
                            setState(() {
                              nivel++;
                            });

                          print(nivel);
                      }, child: Icon(Icons.arrow_drop_up))
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
                            value: nivel/10,
                          )),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Nivel: $nivel',  style: const TextStyle(color: Colors.white, fontSize: 16),),
                    ),
                  ],
                )
              ],
            )
          ],
        ),),
    );
  }
}



