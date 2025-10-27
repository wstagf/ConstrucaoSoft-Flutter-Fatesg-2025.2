import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mensage = "Meu texto";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Widget1(
        texto: mensage,
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  final String texto;
  const Widget1({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Widget2(
        nomeQUalquer: texto,
      ),
    );
  }
}

class Widget2 extends StatelessWidget {
  final String nomeQUalquer;
  const Widget2({super.key, required this.nomeQUalquer});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Widget3(
        repassar3: nomeQUalquer,
      ),
    );
  }
}

class Widget3 extends StatelessWidget {
  final String repassar3;
  const Widget3({super.key, required this.repassar3});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Widget4(
        uzar: repassar3,
      ),
    );
  }
}

class Widget4 extends StatelessWidget {
  final String uzar;
  const Widget4({super.key, required this.uzar});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(uzar),
    );
  }
}
