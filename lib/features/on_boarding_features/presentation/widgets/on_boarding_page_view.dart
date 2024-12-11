import 'package:flutter/material.dart';

import '../../../../core/app_styles/app_colors.dart';
import '../../../../core/app_styles/app_text_styles.dart';
import '../../../../generated/assets.dart';
import 'custom_page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key,required this.controller,});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller:controller,
      children:  [
        CustomPageViewItem(
            background: Assets.imagesVectorBackground1,
            image: Assets.imagesOnBoardingImage1,
            titleText:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  'مرحبًا بك في',
                  style: AppTextStyles.bold23,
                ),
                Text(
                  '  HUB',
                  style: AppTextStyles.bold23.copyWith(
                    color: AppColor.secondaryColor,
                  ),
                ),
                Text(
                  'Fruit',
                  style: AppTextStyles.bold23.copyWith(
                    color: AppColor.primaryColor,
                  ),
                ),
              ],
            ),
            subTitleText: 'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            visible:true,
        ),
        CustomPageViewItem(
            background: Assets.imagesVectorBackground2,
            image: Assets.imagesOnBoardingImage2,
            titleText: Text('ابحث وتسوق',
              style: AppTextStyles.bold23,),
            subTitleText:'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            visible:false,
        ),
      ],
    );
  }
}
