import 'package:flutter/material.dart';

class MeuBotao extends StatelessWidget {
  String textoBotao;
  Color cor;
  void Function() quandoClicar;

  MeuBotao({
    super.key,
    required this.quandoClicar,
    this.cor = Colors.red,
    required this.textoBotao,
  });

  @override
  Widget build(BuildContext context) {
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
}
