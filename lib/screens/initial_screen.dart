import 'package:flutter/material.dart';
import 'package:lista_de_tarefas_flutter/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override

  bool opacidade = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
        backgroundColor: Colors.lightBlue,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(seconds: 1),
        child: ListView(
          //   scrollDirection: Axis.horizontal,
          children: const [
            Task(
                'Aprender Java',
                'assets/images/java.png',
                5),
            Task(
                'Aprender HTML',
                'assets/images/html.png',
                1),
            Task(
                'Aprender React',
                'assets/images/react.png',
                3),
            Task(
                'Aprender Git',
                'assets/images/git.png',
                4),
            Task(
                'Aprender CSS',
                'assets/images/css.png',
                2),
            Task(
                'Aprender JavaScript',
                'assets/images/javascript.png',
                3),
            SizedBox(
              height: 80,
            )
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
