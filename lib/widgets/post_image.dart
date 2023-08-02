// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_assignment_app/utils/dimensions.dart';
import 'package:my_assignment_app/widgets/icon_widget.dart';

class PostImage extends StatefulWidget {
  final String imageUrl;

  const PostImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<PostImage> createState() => _PostImageState();
}

class _PostImageState extends State<PostImage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      height: Dimensions.height450 + Dimensions.height70,
      width: double.infinity,
      child: Stack(
        children: [
          Image.network(
            widget.imageUrl,
            height: Dimensions.height450,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Container(
            padding: EdgeInsets.only(bottom: Dimensions.height16),
            height: Dimensions.height450,
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            child: Image.asset("assets/image/slider.png"),
          ),
          Positioned(
            left: Dimensions.height10 / 2,
            bottom: Dimensions.height12,
            child: Row(
              children: [
                const IconWidget(
                  iconString: "assets/image/heart.png",
                  iconText: "5",
                  isSideText: true,
                  ispadded: true,
                ),
                const IconWidget(
                  iconString: "assets/image/comments.png",
                  iconText: "5",
                  isSideText: true,
                  sideTextPad: 5,
                  ispadded: true,
                ),
                const IconWidget(
                  iconString: "assets/image/bookmark.png",
                  iconText: "",
                  isSideText: false,
                  ispadded: true,
                ),
                SizedBox(
                  width: Dimensions.height12 / 2,
                ),
                Image.asset("assets/image/menu.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
