import "dart:io";

void main() {
  print("Qual o seu nome");
  String? nome = stdin.readLineSync();

  print("Ola ${nome}");
}
