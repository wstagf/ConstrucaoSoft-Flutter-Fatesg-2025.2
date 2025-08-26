class CarroDeclarativo {
  String modelo;
  String cor;

  CarroDeclarativo({required this.modelo, required this.cor});

  void ligar() {
    print("Seu ${modelo} da cor ${cor} está ligado");
  }
}

void main(List<String> args) {
  CarroDeclarativo novoCarro = CarroDeclarativo(
    modelo: "Audi",
    cor: "vermelho",
  );

  novoCarro.ligar();
}
