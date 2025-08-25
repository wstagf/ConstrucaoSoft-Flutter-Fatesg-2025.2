void main() {
  List<int> numeros = [7, 12, 1, 23];

  List<int> pares = [];

  print(numeros);
  print(numeros.length);
  numeros.add(4);
  print(numeros.length);
  numeros.add(5);
  print(numeros.length);
  numeros.add(6);
  print(numeros.length);

  print(numeros);

  numeros.remove(5);
  print(numeros.length);

  print(numeros);

  print(numeros.contains(10));
  print(numeros.contains(2));
  print(numeros.contains(5));

  print(numeros.reversed);
  numeros.sort();
  print(numeros);
}
