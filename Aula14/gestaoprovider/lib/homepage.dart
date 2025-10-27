import 'package:flutter/material.dart';
import 'package:gestaoprovider/action_button.dart';
import 'package:gestaoprovider/mesa.dart';
import 'package:provider/provider.dart';

import 'mesa_model.dart';
import 'consumo_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var mesas = <MesaModel>[
    MesaModel(numero: "1", consumo: 110.00, status: "Ativa"),
    MesaModel(numero: "2", consumo: 0.00, status: "Livre"),
    MesaModel(numero: "3", consumo: 0.00, status: "Livre"),
    MesaModel(numero: "4", consumo: 0.00, status: "Livre"),
  ];

  double calcularTotalMesas() {
    var mesasOcupadas = mesas.where((mesa) => mesa.status == "Ativa");
    double total = 0;

    for (var element in mesasOcupadas) {
      total = total + element.consumo;
    }

    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF830AD1),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.person, color: Colors.white, size: 30),
                    Icon(Icons.visibility, color: Colors.white, size: 30),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Container(
                height: 150,
                margin: EdgeInsets.only(bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          //"Consumo Mesas: R\$ ${calcularTotalMesas()}",
                          "Consume Mesas: ${context.watch<ConsumoProvider>().totalConsumo}",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Mesas Ativas: ${mesas.where((mesa) => mesa.status == "Ativa").length}",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 16,
                    runSpacing: 16,

                    children: [
                      ...mesas.map(
                        (mesaAtual) => MesaWidget(
                          mesa: mesaAtual,
                        ),
                      ),
                    ],

                    // [
                    //   const ,
                    //   const MesaWidget(),
                    //   const MesaWidget(),
                    //   const MesaWidget(),
                    //   const MesaWidget(),
                    //   const MesaWidget(),
                    //   const MesaWidget(),
                    //   const MesaWidget(),
                    //   const MesaWidget(),
                    //   const MesaWidget(),
                    //   const MesaWidget(),
                    //   const MesaWidget(),
                    // ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Ações rápidas
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ActionButton(icon: Icons.pix, label: "Pix"),
                  ActionButton(icon: Icons.attach_money, label: "Pagar"),
                  ActionButton(icon: Icons.qr_code, label: "Cobrar"),
                  ActionButton(icon: Icons.credit_card, label: "Cartões"),
                  ActionButton(icon: Icons.add, label: "Adicionar"),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
