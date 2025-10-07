import 'package:flutter/material.dart';
import 'package:n1/wellcome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FilledButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const Wellcome(),
                ),
                ModalRoute.withName('/'),
              );
            },
            child: Text("Sair"),
          ),
        ],
      ),
      body: Text("HomePage"),
    );
  }
}
