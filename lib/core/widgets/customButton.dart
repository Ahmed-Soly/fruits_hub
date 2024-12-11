

import 'package:flutter/material.dart';


import '../app_styles/app_colors.dart';
import '../app_styles/app_text_styles.dart';

class CustomButton extends StatelessWidget {
   const CustomButton({
     super.key,
     required this.text,
     required this.onPressed,
     this.width=double.infinity,
   });
  final String text;
  final double? width;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:width,
      decoration:BoxDecoration(
        color:AppColor.primaryColor,
        borderRadius:BorderRadius.circular(16.0),
      ),
      child:TextButton(
        onPressed: onPressed,
        child: Text(text,style:AppTextStyles.bold16.copyWith(
          color: const Color(0xffFFFFFF),
        )),
      ),
    );
  }
}
