import 'dart:ffi';

void main(List<String> args) {
  Map<String, String> carro = {
    "placa": "XXX-0000",
    "cor": "Branco",
    "marca": "Audi",
  };

  Map<String, double> notas = {"n1": 8.5, "n2": 8.9, "n3": 10.0};

  Map<String, dynamic> aluno = {
    "nome": "Thiago",
    "idade": 40,
    "matriculado": false,
  };

  print(aluno["nome"]);
  print(notas["n1"]);

  aluno["matriculado"] = true;

  aluno["materias"] = ["Flutter", "Dart"];

  print(aluno);

  Map<String, String> contatos = {"Thiago": "62-9.9999-9990"};

  print(contatos);

  contatos["Joao"] = "62-9.9999-9991";
  print(contatos);

  contatos.forEach((chave, valor) => {print("$chave : $valor")});
}
