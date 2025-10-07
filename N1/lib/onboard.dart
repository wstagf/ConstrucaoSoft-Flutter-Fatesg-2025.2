import 'package:flutter/material.dart';
import 'package:n1/wellcome.dart';
import 'btn_filled.dart';

import 'btn_only_text.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> with SingleTickerProviderStateMixin {
  int position = 0;

  late TabController _tabController;

  List<String> images = [
    "assets/images/onboard-001.png",
    "assets/images/onboard-002.png",
    "assets/images/onboard-003.png",
  ];

  List<String> title = [
    "Gerencie suas tarefas",
    "Crie uma rotina diária",
    "Organize suas tarefas",
  ];

  List<String> text = [
    "Você pode gerenciar facilmente todas as suas tarefas diárias no DoMe gratuitamente.",
    "No Uptodo você pode criar sua rotina personalizada para se manter produtivo.",
    "Você pode organizar suas tarefas diárias adicionando-as em categorias separadas",
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: images.length, vsync: this);

    _tabController.addListener(() {
      setState(() {
        position = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void NavigateToWellcome(BuildContext ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute<void>(
        builder: (context) => const Wellcome(),
      ),
    );
  }

  Widget buildStep(int pos) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 30,
        ),
        Image.asset(
          images[pos],
          height: 150,
        ),
        Container(
          height: 20,
        ),

        Container(
          height: 20,
          width: MediaQuery.of(context).size.width,

          child: buildStepSelected(pos, images.length),
        ),
        Container(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Text(
            title[pos],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Text(
            text[pos],
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget buildStepSelected(int pos, int qtd) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(qtd, (x) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 5,
          width: 20,
          color: pos == x ? Colors.grey : Colors.grey.withAlpha(120),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BtnOnlyText(
              label: "Pular",
              onTap: () {
                NavigateToWellcome(context);
              },
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: List.generate(
                  images.length,
                  (index) => buildStep(index),
                ),
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BtnOnlyText(
                    label: "Voltar",
                    onTap: () {
                      print(position);
                      setState(() {
                        if (position > 0) {
                          position = position - 1;
                          _tabController.animateTo(position);
                        }
                      });
                    },
                  ),
                  BtnFullFiled(
                    label: "Próximo",
                    onTap: () {
                      setState(() {
                        if (position == images.length - 1) {
                          NavigateToWellcome(context);
                        } else {
                          position = position + 1;
                          _tabController.animateTo(position);
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
