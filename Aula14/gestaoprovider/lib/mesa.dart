import 'package:flutter/material.dart';

class MesaWidget extends StatelessWidget {
  const MesaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 91, 0, 151),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: const Center(
          child: Column(
            children: [
              Text(
                'Mesa Numero 1',
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
                    "R\$ 150,00",
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
