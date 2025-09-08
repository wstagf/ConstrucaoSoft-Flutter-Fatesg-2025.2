import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Titulo da janela",
      color: Colors.red,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Container(
          color: Colors.red,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(color: Colors.white, height: 100, width: 100),
              // Container(height: 20),
              // Container(color: Colors.blue, height: 100, width: 100),
              FlutterLogo(size: 150),
              Container(height: 20),
              CircularProgressIndicator(color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
