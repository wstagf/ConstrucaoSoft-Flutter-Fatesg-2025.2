import 'package:flutter/material.dart';
import 'package:gestaoprovider/mesa_model.dart';

class MesasProvider with ChangeNotifier {
  int _mesasOcupadas = 1;

  int getMesasOcupadas() {
    return _mesasOcupadas;
  }

  setMesasOcupadas(int qtd) {
    _mesasOcupadas = qtd++;
    notifyListeners();
  }

  var _mesas = <MesaModel>[
    MesaModel(numero: "1", consumo: 110.00, status: "Ativa"),
    MesaModel(numero: "2", consumo: 0.00, status: "Livre"),
    MesaModel(numero: "3", consumo: 0.00, status: "Livre"),
    MesaModel(numero: "4", consumo: 0.00, status: "Livre"),
  ];

  List<MesaModel> getMesas() {
    return _mesas;
  }

  void selectionarMesa(MesaModel mesa) {
    mesa.status = "Ativa";

    notifyListeners();
  }

  void fecharContaDaMEsa(MesaModel mesa) {
    mesa.status = "Livre";

    notifyListeners();
  }

  double calcularTotalMesas() {
    var mesasOcupadas = _mesas.where((mesa) => mesa.status == "Ativa");
    double total = 0;

    for (var element in mesasOcupadas) {
      total = total + element.consumo;
    }

    return total;
  }
}
