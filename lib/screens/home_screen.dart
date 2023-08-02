import 'package:flutter/material.dart';
import 'package:my_assignment_app/utils/colors.dart';
import 'package:my_assignment_app/utils/dimensions.dart';
import 'package:my_assignment_app/widgets/divider_widget.dart';
import 'package:my_assignment_app/widgets/icon_widget.dart';
import 'package:my_assignment_app/widgets/post_content.dart';
import 'package:my_assignment_app/widgets/post_image.dart';
import 'package:my_assignment_app/widgets/post_tag.dart';
import 'package:my_assignment_app/widgets/small_text.dart';
import 'package:my_assignment_app/widgets/text_field_widget.dart';

import '../widgets/app_bars.dart';
import '../widgets/profile_badge.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tags = [
      "#2023",
      "#TODAYISMONDAY",
      "#TOP",
      "#POS!",
      "#WOW",
      "#ROW"
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBars(),
            ProfileBadge(
              text: "Lorem",
              subText: "Ipsum",
              features: "165cm . 53Kg",
              isFeatureVisile: true,
              profileImage: "assets/image/자산 9.png",
              customButton: Container(
                padding: EdgeInsets.only(
                  left: Dimensions.height16,
                  right: Dimensions.height16,
                  top: Dimensions.height12 / 2,
                  bottom: Dimensions.height12 / 2,
                ),
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                ),
                child: Text(
                  "Lorem",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'NotoSans',
                    fontWeight: FontWeight.w500,
                    fontSize: Dimensions.height16,
                  ),
                ),
              ),
            ),
            const PostContent(
              title:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              descripiton:
                  '''Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
            
when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries
            
 but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages''',
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height12,
                bottom: Dimensions.height12,
                left: Dimensions.height20,
                right: Dimensions.height20,
              ),
              child: Wrap(
                children: List.generate(
                  tags.length,
                  (index) =>
                      PostTag(text: tags[index], size: Dimensions.height12),
                ),
              ),
            ),
            const PostImage(
              imageUrl:
                  "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg",
            ),
            const DividerWidget(),
            ProfileBadge(
              text: "Lorem ",
              subText: "Ipsum",
              features: "",
              isFeatureVisile: false,
              profileImage: "assets/image/자산 9.png",
              customButton: Image.asset("assets/image/menu.png"),
            ),
            Container(
              padding: EdgeInsets.only(
                left: Dimensions.height70,
                right: Dimensions.height16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(
                    text: '''Lorem Ipsum is simply dummy text of the printing 
and typesetting industry. Lorem Ipsum has been the industry's 
standard dummy text ever since the 1500s''',
                    size: Dimensions.height14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const IconWidget(
                        iconString: "assets/image/heart.png",
                        iconText: "5",
                        isSideText: true,
                        ispadded: false,
                      ),
                      IconWidget(
                        iconString: "assets/image/comments.png",
                        iconText: "5",
                        isSideText: true,
                        sideTextPad: Dimensions.height12 / 2,
                        ispadded: true,
                      )
                    ],
                  ),
                  ProfileBadge(
                    text: "Lorem ",
                    subText: "Ipsum",
                    features: "",
                    isFeatureVisile: false,
                    profileImage: "assets/image/자산 10.png",
                    customButton: Image.asset("assets/image/menu.png"),
                    isPadded: false,
                    isVerified: false,
                  ),
                  SmallText(
                    text:
                        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry.''',
                    size: Dimensions.height14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      IconWidget(
                        iconString: "assets/image/heart.png",
                        iconText: "5",
                        isSideText: true,
                        ispadded: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const DividerWidget(),
            const TextFieldWidget(),
          ],
        ),
      ),
    );
  }
}
