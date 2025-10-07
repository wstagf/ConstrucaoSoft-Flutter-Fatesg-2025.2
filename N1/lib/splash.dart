import 'package:flutter/material.dart';

import 'colors.dart';
import 'onboard.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final GlobalKey<NavigatorState> aaaaNavigatorKey =
      GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    print("Inicalizou");
    navegar();
  }

  void navegar() {
    Future.delayed(Duration(seconds: 5), () {
      aaaaNavigatorKey.currentState?.pushReplacement(
        MaterialPageRoute(builder: (context) => Onboard()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Prova N1 - Flutter Senai",
      color: bgColor,
      navigatorKey: aaaaNavigatorKey,

      home: Scaffold(
        backgroundColor: bgColor,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png", width: 150, height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
