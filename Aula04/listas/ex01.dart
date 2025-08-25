// Média de Números:
//  Crie uma lista de números inteiros
// e calcule a média dos elementos.

void main(List<String> args) {
  List<int> numeros = [9, 9, 8, 8];
  int total = 0;
  double media = 0;

  for (var i = 0; i < numeros.length; i++) {
    total = total + numeros[i];
  }

  media = total / numeros.length;

  print("A média é: ");
  print(media);
}
