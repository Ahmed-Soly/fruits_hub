import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/features/auth_features/presentation/widgets/social_auth_item.dart';
import '../../../../core/app_router.dart';
import '../../../../core/app_styles/app_text_styles.dart';
import '../../../../core/widgets/customButton.dart';
import '../../../../core/widgets/customTextForm.dart';
import '../../../../core/widgets/line_create_account.dart';
import '../../../../core/widgets/or_divider.dart';
import '../../../../generated/assets.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 24.0
        ),
        child: Column(
          children: [
            const CustomTextForm(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height:16.0,),
            CustomTextForm(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              secure:true,
              suffix: IconButton(onPressed:(){},
                  icon: const Icon(Icons.remove_red_eye,
                    color:Color(0xffC9CECF),
                  ),
              ),
            ),
            const SizedBox(
              height:16.0,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed:(){},
                  child:Text('نسيت كلمة المرور ؟'
                    ,style:AppTextStyles.semiBold16.copyWith(
                      color:const Color(0xff2D9F5D),
                    )
                    ,),
                )
              ],
            ),
            const SizedBox(
              height:20.0,
            ),
            CustomButton(
                text: 'تسجيل الدخول',
                onPressed:(){
                  Navigator.pushReplacementNamed(context, AppRoutes.homeView);
                }
            ),
            const SizedBox(
              height:20.0,
            ),
            LineCreateAccount(
              textP1: 'لا تمتلك حساب ؟',
              textP2: 'قم بإنشاء حساب',
              VoidCallbackAction: (){
                Navigator.pushReplacementNamed(context, AppRoutes.registerView);
              },
            ),
            const SizedBox(
              height:20.0,
            ),
            OrDivider(),
            const SizedBox(
              height: 30,
            ),
            SocialAuthItem(
                leading:SvgPicture.asset(Assets.imagesGoogleIcon),
                text: 'تسجيل بواسطة جوجل',
                onPressed: (){},
            ),
            const SizedBox(
              height: 16,
            ),
            SocialAuthItem(
                leading:SvgPicture.asset(Assets.imagesFacebookIcon),
                text: 'تسجيل بواسطة فيسبوك',
                onPressed: (){},
            ),
            const SizedBox(
              height: 16,
            ),
            SocialAuthItem(
                leading:SvgPicture.asset(Assets.imagesAppleIcon),
                text: 'تسجيل بواسطة ابل',
                onPressed: (){},
            ),

            



          ],
        ),
      ),
    );
  }
}
