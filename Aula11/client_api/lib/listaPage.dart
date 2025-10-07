import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListaPage extends StatefulWidget {
  const ListaPage({super.key});

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  var listaLivros = [];
  void carregarDados() async {
    var response = await http.get(
      Uri.parse("https://bible-api.com/data/almeida"),
    );

    print(response);

    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;

    print(jsonResponse);
    setState(() {
      listaLivros = jsonResponse["books"];
    });
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
        children: [
          Text(
            listaLivros.length.toString(),
            style: TextStyle(fontSize: 48),
          ),
        ],
      ),
    );
  }
}
