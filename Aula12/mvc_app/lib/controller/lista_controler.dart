import 'package:mvc_app/model/parafazer_model.dart';

class ListaControler {
  final List<ParaFazer> _minhaLista = [
    ParaFazer(
      id: 1,
      todo: "Tarefa 001",
      completed: false,
      userId: 123,
    ),
    ParaFazer(
      id: 2,
      todo: "Tarefa 002",
      completed: true,
      userId: 321,
    ),
  ];

  // get all
  List<ParaFazer> obterTodas() {
    return _minhaLista;
  }

  // get por id

  // update por id

  // delete

  // inserir item
}
