void main() {
  double nota1 = 7.5;
  double nota2 = 8.0;
  double nota3 = 6.5;

  double media = (nota1 + nota2 + nota3) / 3;

  print("A média das notas é: $media");

  if (media >= 7) {
    print("Aprovado");
  } else {
    print("Reprovado");
  }
}
