import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListaPage extends StatefulWidget {
  const ListaPage({super.key});

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  void carregarDados() async {
    var response = await http.get(
      Uri.parse("https://bible-api.com/Jo%C3%A3o+3:16?translation=almeida"),
    );

    print(response);

    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;

    print(jsonResponse);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha Biblia"),
        actions: [
          GestureDetector(
            onTap: () {
              carregarDados();
            },
            child: Text("Carregar"),
          ),
          Container(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
