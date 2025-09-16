import 'package:flutter/material.dart';

class ItemLista extends StatelessWidget {
  int id;
  ItemLista({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Você escolheu o item $id"),
    );
  }
}
