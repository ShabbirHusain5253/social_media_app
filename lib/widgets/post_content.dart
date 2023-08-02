// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_assignment_app/utils/dimensions.dart';
import 'package:my_assignment_app/widgets/big_text.dart';
import 'package:my_assignment_app/widgets/small_text.dart';

class PostContent extends StatelessWidget {
  final String title;
  final String descripiton;

  const PostContent({
    Key? key,
    required this.title,
    required this.descripiton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: Dimensions.height20,
        left: Dimensions.height22,
        right: Dimensions.height22,
        bottom: Dimensions.height22,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(
            text: title,
            size: Dimensions.height20,
          ),
          SizedBox(
            height: Dimensions.height16,
          ),
          SmallText(
              text: descripiton,
              size: Dimensions.height16,
              color: const Color(0xFF313B49)),
        ],
      ),
    );
  }
}
