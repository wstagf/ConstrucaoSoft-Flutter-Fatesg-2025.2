import 'package:mvc_app/model/parafazer_model.dart';

class ListaControler {
  List<ParaFazer> minhaLista = [
    ParaFazer(
      id: 0,
      todo: "Tarefa 001",
      completed: false,
      userId: 123,
    ),
    ParaFazer(
      id: 1,
      todo: "Tarefa 002",
      completed: true,
      userId: 321,
    ),
  ];

  // get all
  List<ParaFazer> obterTodas() {
    return minhaLista;
  }

  // get por id

  // update por id

  // delete
  void apagarItem({required int id}) {
    print(id);
    minhaLista = minhaLista.where((item) => item.id != id).toList();
  }

  // inserir item
  void adicionarItem({required String tarefa}) {
    if (tarefa.isNotEmpty) {
      ParaFazer novoParaFazer = ParaFazer(
        id: minhaLista.length + 1,
        todo: tarefa,
        completed: false,
        userId: 1,
      );

      minhaLista.add(novoParaFazer);
    }
  }
}
