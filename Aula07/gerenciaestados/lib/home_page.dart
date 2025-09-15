import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String mensagem;
  HomePage(this.mensagem, {super.key});

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
