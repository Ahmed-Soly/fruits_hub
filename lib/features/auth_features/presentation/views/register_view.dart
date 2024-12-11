import 'package:flutter/material.dart';


import '../../../../core/widgets/custom_appBar.dart';
import '../widgets/register_view_body.dart';


class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customAppBar(
          context,
          titleText:'حساب جديد',
      ),
      body:const RegisterViewBody(),
    );
  }
}
