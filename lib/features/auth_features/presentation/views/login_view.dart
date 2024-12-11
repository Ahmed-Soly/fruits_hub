import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_appBar.dart';
import '../widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customAppBar(context,
        titleText: 'تسجيل الدخول',
      ),
      body: const LoginViewBody(),
    );
  }
}
