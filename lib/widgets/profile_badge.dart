// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_assignment_app/utils/colors.dart';
import 'package:my_assignment_app/utils/dimensions.dart';
import 'package:my_assignment_app/widgets/big_text.dart';

class ProfileBadge extends StatelessWidget {
  final String text;
  final String subText;
  final String features;
  final bool isFeatureVisile;
  final bool isPadded;
  final bool isVerified;
  final String profileImage;
  final Color profileColor;
  final Widget customButton;

  const ProfileBadge({
    Key? key,
    required this.text,
    required this.subText,
    required this.features,
    required this.isFeatureVisile,
    this.isPadded = true,
    this.isVerified = true,
    required this.profileImage,
    this.profileColor = const Color.fromRGBO(254, 219, 205, 1),
    required this.customButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: Dimensions.height22,
        bottom: Dimensions.height22,
        left: isPadded ? Dimensions.height22 : 0,
        right: isPadded ? Dimensions.height22 : Dimensions.height10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: profileColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                ),
                child: Image.asset(
                  profileImage,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: text, size: Dimensions.height20),
                  const SizedBox(
                    height: 2,
                  ),
                  isFeatureVisile
                      ? Text(
                          features,
                          style: TextStyle(
                            color: AppColors.subTitleColor,
                            fontSize: Dimensions.height12,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      : Container(),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isVerified
                        ? Image.asset("assets/image/EXPERT_ICON.png")
                        : Container(),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      subText,
                      style: TextStyle(
                        color: AppColors.subTitleColor,
                        fontSize: Dimensions.height12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          customButton,
        ],
      ),
    );
  }
}
