import 'package:flutter/material.dart';
import 'package:gestaoprovider/mesa_model.dart';

class MesaWidget extends StatelessWidget {
  final MesaModel mesa;
  const MesaWidget({super.key, required this.mesa});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: mesa.status == "Livre"
            ? const Color.fromARGB(255, 2, 181, 5)
            : const Color.fromARGB(255, 96, 0, 70),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Mesa ${mesa.numero}",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              Row(
                children: [
                  Icon(
                    Icons.monetization_on_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    "Mesa ${mesa.consumo}",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
