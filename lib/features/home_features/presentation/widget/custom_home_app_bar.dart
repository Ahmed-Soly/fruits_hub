import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/app_styles/app_text_styles.dart';
import '../../../../generated/assets.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: SvgPicture.asset(Assets.imagesNotification),
      leading:Image.asset(Assets.imagesAvatar),
      title:Text('صباح الخير...!',
        style:AppTextStyles.regular16.copyWith(
          color:const Color(0xff949D9E),
        ),
      ),
      subtitle: Text('أحمد مصطفي',
        style:AppTextStyles.bold16,
      ),
    );
  }
}

