import 'package:flutter/material.dart';
import 'package:gestaoprovider/action_button.dart';
import 'package:gestaoprovider/mesa.dart';
import 'package:gestaoprovider/mesas_provider.dart';
import 'package:provider/provider.dart';

import 'mesa_model.dart';
import 'consumo_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                          //"Mesas Ativas: ${mesas.where((mesa) => mesa.status == "Ativa").length}",
                          "Mesas Ativas: ${context.watch<MesasProvider>().getMesasOcupadas()}",
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
                      ...context.watch<MesasProvider>().getMesas().map(
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
