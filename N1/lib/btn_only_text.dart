import 'package:flutter/material.dart';

class BtnOnlyText extends StatelessWidget {
  String label;
  Function onTap;
  double customWidth;
  double custonHeight;

  BtnOnlyText({
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
      child: SizedBox(
        height: custonHeight,
        width: customWidth,
        child: Center(child: Text(label)),
      ),
    );
  }
}
