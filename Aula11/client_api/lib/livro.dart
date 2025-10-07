import 'package:flutter/material.dart';

class Livro extends StatefulWidget {
  final String nome;

  const Livro({Key? key, required this.nome}) : super(key: key);

  @override
  _LivroState createState() => _LivroState();
}

class _LivroState extends State<Livro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nome),
      ),
      body: Center(
        child: Text('Conteúdo do livro: ${widget.nome}'),
      ),
    );
  }
}
