import 'package:flutter/material.dart';

class ConsumoProvider with ChangeNotifier {
  double _totalConsumo = 0;

  double get totalConsumo => _totalConsumo;

  void adicionarConsumo(double valor) {
    _totalConsumo = _totalConsumo + valor;
    notifyListeners();
  }
}
