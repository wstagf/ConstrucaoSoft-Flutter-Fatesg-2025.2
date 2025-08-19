import 'dart:io';

void main(List<String> args) {
  print("Digite o numero");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero < 0) {
    print("negativo");
  } else if (numero > 0) {
    print("positivo");
  } else {
    print("é zero");
  }
}
