import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Iconespage extends StatefulWidget {
  Iconespage({super.key});

  @override
  State<Iconespage> createState() => _IconespageState();
}

class _IconespageState extends State<Iconespage> {
  List<Widget> lista = [
    SvgPicture.asset("images/home.svg", height: 50),
    SvgPicture.asset("images/search.svg", height: 50),
    SvgPicture.asset("images/settings.svg", height: 50),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Wrap(children: lista));
  }
}

// TODA COLUMN, ROW, STACK, .... recebem um lista de child... eles possuem CHILDREN
