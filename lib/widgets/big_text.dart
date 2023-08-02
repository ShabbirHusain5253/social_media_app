import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const BigText(
      {super.key,
      required this.text,
      required this.size,
      this.color = const Color(0xFF1D232B)});

  @override
  Widget build(Object context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: "NotoSans",
        fontSize: size,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
