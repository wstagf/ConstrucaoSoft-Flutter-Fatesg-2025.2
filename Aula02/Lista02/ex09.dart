import 'dart:io';

void main(List<String> args) {
  print("Digite um numero:");
  int numero = int.parse(stdin.readLineSync()!);

  print("Tabuada do $numero:");
  for (int i = 1; i <= 10; i++) {
    print("$numero x $i = ${numero * i}");
  }
}
