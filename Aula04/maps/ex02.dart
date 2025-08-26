// Cadastro de Produtos:
//  Crie um mapa com produtos como
//  chave e preços como valor.
//   Adicione cinco produtos
//  e calcule o preço médio dos itens.

void main(List<String> args) {
  Map<String, double> produtos = {};

  produtos["Coca Cola"] = 9.90;

  produtos["Sandwiche de presunto"] = 1.58;

  produtos["Pizza"] = 19.90;

  produtos["Creme"] = 3.90;

  produtos["Batata Frita"] = 5.50;

  double total = 0;
  produtos.forEach((chave, valor) => {total = total + valor});

  double media = total / produtos.length;

  print("A media dos produtos é: ");

  print(media);
}
