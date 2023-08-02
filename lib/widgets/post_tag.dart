import 'package:flutter/cupertino.dart';
import 'package:my_assignment_app/utils/dimensions.dart';

class PostTag extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final Color tagColor;
  final Color borderColor;

  const PostTag({
    Key? key,
    required this.text,
    required this.size,
    this.color = const Color(0xFF5A6B87),
    this.tagColor = const Color(0xFFF7F8FA),
    this.borderColor = const Color(0xFFCED3DE),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: Dimensions.height10 / 2, bottom: Dimensions.height10 / 2),
      padding: EdgeInsets.only(
        top: Dimensions.height12 / 2,
        bottom: Dimensions.height12 / 2,
        left: Dimensions.height16,
        right: Dimensions.height16,
      ),
      decoration: BoxDecoration(
        color: tagColor,
        borderRadius: BorderRadius.circular(
          Dimensions.radius20,
        ),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
