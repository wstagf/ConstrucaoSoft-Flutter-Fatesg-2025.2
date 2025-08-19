void main() {
  void mostrarUsuario({required String nome, required int idade}) {
    print("Nome: $nome");
    print("Idade: $idade anos");
  }

  mostrarUsuario(nome: "Ana", idade: 25);
}
