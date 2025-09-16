import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String mensagem;

  // essa variavel mensagem foi declarada de forma POSICIONAL
  //HomePage(this.mensagem, {super.key});

  //    essa variavel sera utilizanda de forma declarativa
  // como existe a palava REQUIRED antes, ela é obrigatoria
  HomePage({required this.mensagem, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          mensagem,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
