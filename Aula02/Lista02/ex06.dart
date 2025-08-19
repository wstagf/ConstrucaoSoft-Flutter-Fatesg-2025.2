import 'dart:io';

void main(List<String> args) {
  print("Digite o ano:");
  int ano = int.parse(stdin.readLineSync()!);

  if ((ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0)) {
    print("$ano é um ano bissexto.");
  } else {
    print("$ano não é um ano bissexto.");
  }
}
