import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  const SmallText({
    Key? key,
    required this.text,
    required this.size,
    this.color = const Color(0xFF313B49),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.clip,
      style: TextStyle(
        color: color,
        fontFamily: "NotoSans",
        fontSize: size,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
