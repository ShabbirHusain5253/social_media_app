import 'package:flutter/material.dart';
import 'package:my_assignment_app/utils/colors.dart';
import 'package:my_assignment_app/widgets/big_text.dart';

import '../utils/dimensions.dart';

class AppBars extends StatelessWidget {
  const AppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimensions.height20 * 2),
      height: Dimensions.appBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.height10,
              top: Dimensions.height12,
              bottom: Dimensions.height12,
            ),
            child: Image.asset(
              "assets/image/ARROW.png",
              height: Dimensions.iconSize40,
              width: Dimensions.iconSize40,
            ),
          ),
          BigText(
            text: "자유톡",
            size: Dimensions.height20,
            color: AppColors.titleColor,
          ),
          Container(
              padding: EdgeInsets.only(
                top: Dimensions.height12,
                bottom: Dimensions.height12,
                right: Dimensions.height16,
              ),
              child: Image.asset(
                "assets/image/bell.png",
                height: Dimensions.iconSize40,
                width: Dimensions.iconSize40,
              )),
        ],
      ),
    );
  }
}
