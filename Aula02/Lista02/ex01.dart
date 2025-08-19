import 'dart:io';

void main(List<String> args) {
  print("Digite o numero");
  int a = int.parse(stdin.readLineSync()!);

  print("Digite outro numero");
  int b = int.parse(stdin.readLineSync()!);

  print("A soma é ${a + b}");

  print("A subtracao é ${a - b}");
  print("A multiplicacao é ${a * b}");
  print("A divisao é ${a / b}");
}
