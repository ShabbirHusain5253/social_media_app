import 'package:flutter/cupertino.dart';
import 'package:my_assignment_app/utils/colors.dart';
import 'package:my_assignment_app/utils/dimensions.dart';

class IconWidget extends StatelessWidget {
  final String iconString;
  final String iconText;
  final bool isSideText;
  final bool ispadded;
  final double? sideTextPad;

  const IconWidget({
    Key? key,
    required this.iconString,
    required this.iconText,
    required this.isSideText,
    required this.ispadded,
    this.sideTextPad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: Dimensions.height12,
        left: ispadded ? Dimensions.height16 : 0,
        bottom: Dimensions.height12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(iconString),
          isSideText
              ? Container(
                  padding: EdgeInsets.only(left: sideTextPad ?? 0),
                  child: Text(
                    iconText,
                    style: TextStyle(
                      color: AppColors.iconsTextColor,
                      fontSize: Dimensions.height16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
