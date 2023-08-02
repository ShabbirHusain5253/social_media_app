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
              text: "안녕 나 응애",
              subText: "1일전",
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
                  "팔로우",
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
              title: "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
              descripiton:
                  '''지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~혹시 어떤 상품이 제일 괜찮았어?
            
후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이제일 재밌었다던데 맞아???
            
올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!''',
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
              text: "안녕 나 응애 ",
              subText: "1일전",
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
                    text: '''어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 
우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하
아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다
괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니
꼭 봐주세용~!''',
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
                    text: "ㅇㅅㅇ ",
                    subText: "1일전",
                    features: "",
                    isFeatureVisile: false,
                    profileImage: "assets/image/자산 10.png",
                    customButton: Image.asset("assets/image/menu.png"),
                    isPadded: false,
                    isVerified: false,
                  ),
                  SmallText(
                    text: '''오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다''',
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
