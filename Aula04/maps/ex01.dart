// Agenda de Contatos:
//  Crie um mapa com nomes como chave
//  e telefones como valor.
//
//  Adicione três contatos
//
//
//  e exiba todos os nomes e números.
void main(List<String> args) {
  Map<String, String> contatos = {"Thiago": "62-9.9999-9990"};

  contatos["Joao"] = "62-9.9999-9991";

  contatos["Pedro"] = "62-9.9999-9992";

  contatos["Jose"] = "62-9.9999-9993";

  contatos.forEach(
    (ladoA, ladoB) => {print("Nome " + ladoA + " - Telefone: " + ladoB)},
  );
}
