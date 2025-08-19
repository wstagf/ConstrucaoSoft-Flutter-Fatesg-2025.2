void main(List<String> args) {
  String numero1EmTexto = "15";
  String numero2EmTexto = "25";

  // string -> int
  int numero1Int = int.parse(numero1EmTexto);
  int numero2Int = int.parse(numero2EmTexto);

  // string -> double
  double numero1Doublet = double.parse(numero1EmTexto);
  double numero2Doublet = double.parse(numero2EmTexto);

  // double -> String
  numero1Doublet.toString();

  // int -> String
  numero1Int.toString();
}
