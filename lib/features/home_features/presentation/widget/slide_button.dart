import 'package:flutter/material.dart';

import '../../../../core/app_styles/app_colors.dart';
import '../../../../core/app_styles/app_text_styles.dart';


class SlideButton extends StatelessWidget {
  const SlideButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:32,
      child:TextButton(
        onPressed:(){},
        style:TextButton.styleFrom(
          shape:RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(4.0),
          ),
          backgroundColor:Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: FittedBox(
            child: Text('تسوق الان',style:AppTextStyles.bold13.copyWith(
              color: AppColor.primaryColor,
            )),
          ),
        ),
      ),
    );
  }
}
