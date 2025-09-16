import 'package:flutter/material.dart';

class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text("Segunda pagina"),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Voltar "),
          ),
        ],
      ),
    );
  }
}
