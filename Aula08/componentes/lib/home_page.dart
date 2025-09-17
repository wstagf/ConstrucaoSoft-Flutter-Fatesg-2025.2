import 'package:flutter/material.dart';

import 'widgets/botao.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MeuBotao(
              textoBotao: "Texto 1",

              quandoClicar: () {
                print("1");
              },
            ),
            MeuBotao(
              textoBotao: "Texto 2",

              quandoClicar: () {
                print("2");
              },
            ),
            MeuBotao(
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
