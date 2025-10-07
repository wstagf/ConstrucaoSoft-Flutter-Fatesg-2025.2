import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Versiculo extends StatefulWidget {
  final String nome;
  final String url;

  const Versiculo({Key? key, required this.nome, required this.url})
    : super(key: key);

  @override
  _VersiculoState createState() => _VersiculoState();
}

class _VersiculoState extends State<Versiculo> {
  var listaVersiculos = [];

  @override
  void initState() {
    super.initState();
    carregarDados();
  }

  Widget cadaVersiculoWidget({
    required String verse,
    required String text,
  }) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.green.withAlpha(120),
      padding: EdgeInsets.all(20),
      height: 80,
      child: Row(
        children: [
          Text(
            "Versiculo: $verse",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.start,
          ),
          Container(
            width: 20,
          ),

          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }

  void carregarDados() async {
    var response = await http.get(
      Uri.parse(widget.url),
    );

    print(response);

    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;

    print(jsonResponse);
    setState(() {
      listaVersiculos = jsonResponse["verses"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Capitulo${widget.nome}"),
        actions: [
          Text(
            "Capitulos Carregados: ${listaVersiculos.length}",
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
              ...listaVersiculos.map((versic) {
                return cadaVersiculoWidget(
                  verse: versic["verse"].toString(),
                  text: versic["text"],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
