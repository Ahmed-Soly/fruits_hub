import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_Check_box.dart';


class TermsCondition extends StatelessWidget {
  const TermsCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          CustomCheckBox(),
          const SizedBox(
            width: 16,
          ),
          const Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text:'من خلال إنشاء حساب ، فإنك توافق على '
                    ,),
                  TextSpan(
                    text: 'الشروط والأحكام',
                  ),
                  TextSpan(
                    text: ' ',
                  ),
                  TextSpan(
                    text: 'الخاصة',
                  ),
                  TextSpan(
                    text: ' ',
                  ),
                  TextSpan(
                    text: 'بنا',),
                ],
              ),
              textAlign: TextAlign.right,
            ),),
        ]
    );
  }
}
