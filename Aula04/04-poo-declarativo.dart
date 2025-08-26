class CarroDeclarativo {
  String? modelo;
  String? cor;

  CarroDeclarativo({this.modelo, this.cor});

  void ligar() {
    print("Seu ${modelo} da cor ${cor} está ligado");
  }
}

void main(List<String> args) {
  CarroDeclarativo novoCarro = CarroDeclarativo(
    cor: "vermelho",
    modelo: "Audi",
  );

  novoCarro.ligar();
}
