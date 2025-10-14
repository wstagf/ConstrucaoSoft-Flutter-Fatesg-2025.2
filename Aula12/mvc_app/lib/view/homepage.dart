import 'package:flutter/material.dart';
import 'package:mvc_app/controller/lista_controler.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ListaControler listaControler = ListaControler();
  TextEditingController txtContorler = TextEditingController();
  String novaTarefa = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          setState(() {
            listaControler.adicionarItem(
              tarefa: novaTarefa,
            );
            novaTarefa = "";
            txtContorler.clear();
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(50),
          ),

          width: 100,
          height: 100,
          child: Center(
            child: Text(
              "+",
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(
          20,
        ),
        child: Column(
          children: [
            TextFormField(
              controller: txtContorler,
              onChanged: (value) {
                setState(() {
                  novaTarefa = value;
                });
              },
            ),
            Text(
              "Existem ${listaControler.obterTodas().length} tarefas",
              style: TextStyle(fontSize: 36),
            ),
            ...listaControler.obterTodas().map((tarefa) {
              return Text(tarefa.todo);
            }),
          ],
        ),
      ),
    );
  }
}
