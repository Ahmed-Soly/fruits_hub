import 'package:flutter/material.dart';

import '../../../../core/app_styles/app_text_styles.dart';


class SocialAuthItem extends StatelessWidget {
  const SocialAuthItem({
    super.key,
    required this.leading,
    required this.text,
    required this.onPressed,
  });

  final Widget leading;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:56,
      child: TextButton(
          style:TextButton.styleFrom(
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(16.0),
                side:const BorderSide(
                  color: Color(0xffDDDFDF),
                ),
              )
          ),
          onPressed:onPressed,
          child: ListTile(
            visualDensity:const VisualDensity(
                vertical: VisualDensity.minimumDensity
            ),
            leading:leading,
            title: Text(text,
              textAlign:TextAlign.center,
              style:AppTextStyles.semiBold16.copyWith(
                color:Color(0xff0C0D0D),
              ),),
          )
      ),
    );
  }
}
