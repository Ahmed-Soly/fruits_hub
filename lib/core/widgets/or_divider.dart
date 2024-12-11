import 'package:flutter/material.dart';

import '../app_styles/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider()
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0),
          child: Text('أو',style:
          AppTextStyles.bold16.copyWith(
            color:Color(0xff0C0D0D),
          ),),
        ),
        Expanded(
            child: Divider()
        ),
      ],
    );
  }
}
