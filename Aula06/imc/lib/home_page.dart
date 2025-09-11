import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String masculinoOuFeminino = "";

  double peso = 0.0;

  double altura = 0.0;

  double imc = 0.0;

  String resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora de IMC")),
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Form(
          child: Column(
            children: [
              Text("Sexo: M ou F", style: TextStyle(fontSize: 18)),
              TextFormField(
                maxLength: 1,
                onChanged: (value) {
                  setState(() {
                    if (value.toLowerCase() == "m") {
                      masculinoOuFeminino = value.toLowerCase();
                    } else if (value.toLowerCase() == "f") {
                      masculinoOuFeminino = value.toLowerCase();
                    } else {
                      masculinoOuFeminino = "";
                    }

                    print("value");
                    print(value);

                    print(masculinoOuFeminino);
                  });
                },
              ),
              Container(height: 10),
              Text("Peso: ", style: TextStyle(fontSize: 18)),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    peso = double.parse(value);
                  });
                },
              ),
              Container(height: 10),
              Text("Altura", style: TextStyle(fontSize: 18)),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    altura = double.parse(value);
                  });
                },
              ),
              Container(height: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    print(altura);
                    print(peso);
                    print(masculinoOuFeminino);

                    if (masculinoOuFeminino == "m") {
                      imc = (peso / (altura * altura));
                    } else if (masculinoOuFeminino == "f") {
                      imc = (peso / (altura * altura));
                    } else {
                      print("digite algum valor");
                    }

                    if (imc < 18.5) {
                      resultado = "Abaixo do peso";
                    } else if (imc >= 18.5 && imc < 24.9) {
                      resultado = "Peso Normal";
                    } else if (imc >= 24.9 && imc < 29.9) {
                      resultado = "Sobrepeso";
                    } else if (imc >= 29.9 && imc < 34.9) {
                      resultado = "Obesidade Grau 1";
                    } else if (imc >= 34.9 && imc < 39.9) {
                      resultado = "Obesidade Grau 2";
                    } else if (imc >= 39.9) {
                      resultado = "Obesidade Grau 3";
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  color: Colors.blue[900],
                  child: Center(
                    child: Text(
                      "Calcular",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              Container(height: 10),
              Text("Resultado", style: TextStyle(fontSize: 18)),
              Text(
                "Seu IMC é " +
                    imc.toStringAsFixed(2) +
                    ", classificado como " +
                    resultado,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
