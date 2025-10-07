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

  Widget cadaLivroWidget({
    required String code,
    required String nome,
    required String url,
  }) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.green.withAlpha(120),
      padding: EdgeInsets.all(20),
      height: 80,
      child: Row(
        children: [
          Container(
            width: 70,
            child: Text(
              code,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 10,
          ),
          Expanded(
            child: Text(
              nome,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha Biblia"),
        actions: [
          Text(
            "Livros carregados: ${listaLivros.length}",
            style: TextStyle(fontSize: 18),
          ),
          Container(
            width: 40,
          ),
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(""),
              ...listaLivros.map((livro) {
                return cadaLivroWidget(
                  code: livro["id"],
                  nome: livro["name"],
                  url: livro["url"],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
