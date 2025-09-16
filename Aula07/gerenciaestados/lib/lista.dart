import 'package:flutter/material.dart';

import 'item_lista.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  void navegar(int id, BuildContext ctx) {
    print(id);
    Navigator.push(
      ctx,
      MaterialPageRoute(
        builder: (builder) => ItemLista(
          id: id,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina de Lista"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                navegar(1, context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.greenAccent,
                child: Center(
                  child: Text("Item 1"),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                navegar(2, context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.greenAccent,
                child: Center(
                  child: Text("Item 2"),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                navegar(3, context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.greenAccent,
                child: Center(
                  child: Text("Item 3"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
