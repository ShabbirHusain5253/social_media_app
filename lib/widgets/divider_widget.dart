import 'package:flutter/material.dart';
import '../utils/dimensions.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Dimensions.height10 / 5,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
    );
  }
}
