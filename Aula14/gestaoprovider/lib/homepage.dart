import 'package:flutter/material.dart';
import 'package:gestaoprovider/action_button.dart';
import 'package:gestaoprovider/mesa.dart';

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
                      children: const [
                        Text(
                          "Consumo Mesas: R\$ 2.450,75",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Mesas Ativas: 10",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Previsão de faturamento para hoje: R\$ 5.000,00",
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                        ),
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
                      const MesaWidget(),
                      const MesaWidget(),
                      const MesaWidget(),
                      const MesaWidget(),
                      const MesaWidget(),
                      const MesaWidget(),
                      const MesaWidget(),
                      const MesaWidget(),
                      const MesaWidget(),
                      const MesaWidget(),
                      const MesaWidget(),
                      const MesaWidget(),
                    ],
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
