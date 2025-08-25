// Verificação e Ordenação:
// Crie uma lista de números aleatórios.
// Verifique se a lista contém o número 10 e,
//  em seguida,
// ordene os números em ordem crescente.

void main(List<String> args) {
  List<int> numeros = [7, 12, 1, 23, 10];

  if (numeros.contains(10)) {
    print("Existe o numero 10");
  } else {
    print("Não existe o numero 10");
  }
  numeros.sort();
  print(numeros);
}
