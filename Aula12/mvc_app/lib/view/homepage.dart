import 'package:flutter/material.dart';
import 'package:mvc_app/controller/lista_controler.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ListaControler listaControler = ListaControler();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          setState(() {
            listaControler.adicionarItem(
              tarefa: "AprenderFlutter",
            );
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
            Text(
              "Existem ${listaControler.obterTodas().length} tarefas",
              style: TextStyle(fontSize: 36),
            ),
            Text(
              "Tarefa 1",
              style: TextStyle(fontSize: 26),
            ),
            Text(
              "Tarefa 2",
              style: TextStyle(fontSize: 26),
            ),
            Text(
              "Tarefa 3",
              style: TextStyle(fontSize: 26),
            ),
            Text(
              "Tarefa 4",
              style: TextStyle(fontSize: 26),
            ),
          ],
        ),
      ),
    );
  }
}
