import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth_features/presentation/widgets/terms_condition.dart';

import '../../../../core/app_router.dart';
import '../../../../core/widgets/customButton.dart';
import '../../../../core/widgets/customTextForm.dart';
import '../../../../core/widgets/line_create_account.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Padding(
        padding: const EdgeInsets.symmetric(
          horizontal:16.0,
          vertical: 24.0,
        ),
        child: Column(
          children: [
            const CustomTextForm(
                hintText: 'الأسم كامل',
                textInputType: TextInputType.name,
            ),
            const SizedBox(height: 16,),
            const CustomTextForm(
              hintText: 'البريد الألكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16,),
            CustomTextForm(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffix:IconButton(
                onPressed:(){},
                icon:const Icon(Icons.remove_red_eye,
                  color:Color(0xffC9CECF),
                ),
              ),
            ),
            const SizedBox(height: 16,),
            const TermsCondition(),
            const SizedBox(height: 30,),
            CustomButton(
                text: 'إنشاء حساب جديد',
                onPressed: (){}
            ),
            const SizedBox(height: 26,),
            LineCreateAccount(
              textP1: 'تمتلك حساب بالفعل؟',
              textP2: 'تسجيل الدخول',
              VoidCallbackAction: (){
                Navigator.pushNamed(context, AppRoutes.loginView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
