import 'dart:ffi';

import 'package:flutter/material.dart';

class BtnFullFiled extends StatelessWidget {
  String label;
  Function onTap;
  double customWidth;
  double custonHeight;

  BtnFullFiled({
    super.key,
    required this.label,
    required this.onTap,
    this.customWidth = 80.0,
    this.custonHeight = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
        print("asdas");
      },
      child: Container(
        height: custonHeight,
        width: customWidth,
        color: Colors.blue,
        child: Center(child: Text(label)),
      ),
    );
  }
}
