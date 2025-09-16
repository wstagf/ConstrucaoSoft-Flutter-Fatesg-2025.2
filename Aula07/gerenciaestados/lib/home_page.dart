import 'package:flutter/material.dart';
import 'package:gerenciaestados/segunda_pagina.dart';

import 'lista.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              mensagem,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),

            // componete para reutilizar o layout do material design
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) => SegundaPagina(),
                  ),
                );
              },
              child: Text("Segunda Tela"),
            ),

            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) => Lista(),
                  ),
                );
              },
              child: Text("Tela Lista"),
            ),

            // componente para quando precisamos fazer um botao
            // e queremos definir o layout dele completamente
            // InkWell(
            //   onTap: () {},

            //   child: Container(
            //     padding: EdgeInsets.all(10),
            //     decoration: BoxDecoration(
            //       color: Colors.blue,
            //       borderRadius: BorderRadius.circular(40),
            //     ),
            //     child: Text("Segunda Tela"),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
