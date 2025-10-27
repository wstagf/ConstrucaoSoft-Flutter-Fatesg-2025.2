import 'package:flutter/material.dart';
import 'package:gestaoprovider/homepage.dart';
import 'package:gestaoprovider/consumo_provider.dart';
import 'package:gestaoprovider/mesas_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ConsumoProvider()),
        ChangeNotifierProvider(create: (_) => MesasProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),

      home: const HomePage(),
    );
  }
}
