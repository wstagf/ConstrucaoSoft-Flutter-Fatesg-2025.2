class CarroDeclarativo {
  String? modelo;
  String? cor;

  CarroDeclarativo({this.modelo = "MODELO PADRAO", this.cor = "COR PADRAO"});

  void ligar() {
    print("Seu ${modelo} da cor ${cor} está ligado");
  }
}

void main(List<String> args) {
  CarroDeclarativo novoCarro = CarroDeclarativo();

  novoCarro.ligar();
}
