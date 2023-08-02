import "package:flutter/material.dart";
import 'package:my_assignment_app/utils/colors.dart';
import 'package:my_assignment_app/utils/dimensions.dart';
import 'package:my_assignment_app/widgets/small_text.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.height70,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: Dimensions.height14 / 2,
              left: Dimensions.height16,
              right: Dimensions.height16,
              bottom: Dimensions.height10,
            ),
            child: Image.asset(
              "assets/image/imagesmode.png",
              height: Dimensions.height12 * 3,
              width: Dimensions.height12 * 3,
              fit: BoxFit.cover,
            ),
          ),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                labelText: "Lorem Ipsum",
                labelStyle: TextStyle(color: AppColors.textFieldColor),
                focusColor: AppColors.mainColor,
                border: InputBorder.none,
              ),
              cursorColor: AppColors.mainColor,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                margin: EdgeInsets.only(
                  top: Dimensions.height14 / 2,
                  left: Dimensions.height10 / 2,
                  right: Dimensions.height16,
                  bottom: Dimensions.height10,
                ),
                child: SmallText(
                  text: "Lorem",
                  size: Dimensions.height16,
                  color: AppColors.textFieldColor,
                )),
          ),
        ],
      ),
    );
  }
}
