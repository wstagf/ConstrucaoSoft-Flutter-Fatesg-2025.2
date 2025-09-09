import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String melhorOpcao = "-- Vamos Descobrir";
  double valorGasolina = 0;
  double valorAlcool = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vamos de Alcool ou Gasolina ")),
      body: Container(
        padding: EdgeInsets.all(25),
        color: Colors.white,
        width: MediaQuery.of(context).size.width,

        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   color: Colors.red,
            //   width: 50,
            //   height: 100,
            //   child: Center(child: Text("Imagem")),
            // ),
            SizedBox(height: 10),
            Text(
              "Com base em algoritmos avançados aqui você descobre se é mais vantagem alcool ou gasolina, se bem que atualmente tanto faz, a gente so se...",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) => {
                      setState(() {
                        valorGasolina = double.parse(value);
                      }),
                    },
                    decoration: InputDecoration(
                      labelText: "Valor da Gasolina em Reais. Ex. R\$ 5.98",

                      fillColor: Colors.grey.withAlpha(150),
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    onChanged: (value) => {
                      setState(() {
                        valorAlcool = double.parse(value);
                      }),
                    },

                    decoration: InputDecoration(
                      labelText: "Valor do Alcool em Reais. Ex. R\$ 5.98",
                      fillColor: Colors.grey.withAlpha(150),
                      filled: true,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ), // FilledButton(onPressed: () {}, child: Text("aaa")),
            InkWell(
              onTap: () {
                setState(() {
                  print("antes: " + melhorOpcao);

                  print("clicou aqui");
                  double divisao = valorAlcool / valorGasolina;

                  if (divisao < 0.7) {
                    melhorOpcao = "Alcool";
                  } else {
                    melhorOpcao = "Gasolina";
                  }

                  print("alterado: " + melhorOpcao);
                });
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
            SizedBox(height: 10),
            Text(
              "Alcool ${valorAlcool}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              "Gasolina ${valorGasolina}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              "É melhor abastecer com ${melhorOpcao}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
