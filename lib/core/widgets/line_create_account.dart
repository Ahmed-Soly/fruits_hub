import 'package:flutter/material.dart';
import '../app_styles/app_text_styles.dart';

class LineCreateAccount extends StatelessWidget {
  const LineCreateAccount({super.key,
    required this.textP1,
    required this.textP2,
    required this.VoidCallbackAction
  });

  final String textP1;
  final String textP2;
  final VoidCallbackAction;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        Text(textP1,
          maxLines:2
          ,style:AppTextStyles.bold16.copyWith(
            color:const Color(0xff949D9E),
          ),),
        TextButton(
          onPressed:VoidCallbackAction,
          child:Text(textP2,
            maxLines:2
            ,style:AppTextStyles.bold16.copyWith(
                color:const Color(0xff1B5E37)
            ),),
        )
      ],
    );
  }
}
