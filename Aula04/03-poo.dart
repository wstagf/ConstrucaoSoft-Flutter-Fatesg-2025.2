class Carro {
  String modelo;
  String cor;

  Carro(this.modelo, this.cor);

  void ligar() {
    print("Seu ${modelo} da cor ${cor} está ligado");
  }
}

void main(List<String> args) {
  Carro novoCarro = Carro("Audi", "vermelho");

  novoCarro.ligar();
}
