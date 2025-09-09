import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vamos de Alcool ou Gasolina ")),
      body: Container(
        padding: EdgeInsets.all(25),
        color: Colors.amber,
        width: MediaQuery.of(context).size.width,

        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              width: 50,
              height: 100,
              child: Center(child: Text("Imagem")),
            ),
            Text(
              "Com base em algoritmos avançados aqui você descobre se é mais vantagem alcool ou gasolina, se bem que atualmente tanto faz, a gente so se...",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Form(child: Column(children: [TextFormField(), TextFormField()])),
            // FilledButton(onPressed: () {}, child: Text("aaa")),
            InkWell(
              onTap: () {
                print("clicou aqui");
              },
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: 100,

                child: Center(child: Text("Calcular")),
              ),
            ),
            Text("É melhor abastecer de gasolina"),
          ],
        ),
      ),
    );
  }
}
