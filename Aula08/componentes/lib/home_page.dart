import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget buildButton({
    required String textoBotao,
    required Color cor,
    required void Function() quandoClicar,
  }) {
    return GestureDetector(
      onTap: () {
        quandoClicar();
      },
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          color: cor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(child: Text(textoBotao)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildButton(
              textoBotao: "Texto 1",
              cor: Colors.red,
              quandoClicar: () {
                print("1");
              },
            ),
            buildButton(
              textoBotao: "Texto 2",
              cor: Colors.blue,
              quandoClicar: () {
                print("2");
              },
            ),
            buildButton(
              textoBotao: "Texto 3",
              cor: Colors.yellow,
              quandoClicar: () {
                print("3");
              },
            ),
          ],
        ),
      ),
    );
  }
}
