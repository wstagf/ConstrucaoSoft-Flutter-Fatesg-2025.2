import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Livro extends StatefulWidget {
  final String nome;
  final String url;

  const Livro({Key? key, required this.nome, required this.url})
    : super(key: key);

  @override
  _LivroState createState() => _LivroState();
}

class _LivroState extends State<Livro> {
  var listaCapitulos = [];

  @override
  void initState() {
    super.initState();
    carregarDados();
  }

  Widget cadaLivroWidget({
    required String nome,
    required String url,
    required BuildContext ctx,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => Livro(
              nome: nome,
              url: url,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        color: Colors.green.withAlpha(120),
        padding: EdgeInsets.all(20),
        height: 80,
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Capitulo: $nome",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
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
      listaCapitulos = jsonResponse["chapters"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nome),
        actions: [
          Text(
            "Capitulos Carregados: ${listaCapitulos.length}",
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
              ...listaCapitulos.map((capitulo) {
                return cadaLivroWidget(
                  nome: capitulo["chapter"].toString(),
                  url: capitulo["url"],
                  ctx: context,
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
