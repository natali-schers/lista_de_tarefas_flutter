import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController difficultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nova Tarefa"),
        backgroundColor: Colors.lightBlue,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
      ),
      body: Center(
        child: Container(
          height: 650,
          width: 375,
          // decoration: BoxDecoration(
          // color: Colors.black12,
          // borderRadius: BorderRadius.circular(10),
          // border: Border.all(width: 3)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nameController,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Nome",
                      fillColor: Colors.white70,
                      filled: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: difficultyController,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Dificuldade",
                      fillColor: Colors.white70,
                      filled: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (text) {
                    setState(() {});
                  },
                  controller: imageController,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "URL da imagem",
                      fillColor: Colors.white70,
                      filled: true),
                ),
              ),
              Container(
                width: 72,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.blue)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imageController.text,
                    fit: BoxFit.cover,
                    errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                      return Image.asset("assets/images/default.png");
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      //print(nameController);
                    },
                    child: const Text("Adicionar")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
