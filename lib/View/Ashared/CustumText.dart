// ignore_for_file: file_names
import 'package:flutter/material.dart';

class CustumText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  const CustumText(
      {super.key,
      required this.text,
      required this.size,
      this.fontWeight,
      this.color ,  
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(fontSize: size, fontWeight: fontWeight, color: color),
    );
  }
}
