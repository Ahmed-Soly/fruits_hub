import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/app_router.dart';
import '../../../../core/app_styles/app_text_styles.dart';


class CustomPageViewItem extends StatelessWidget {
  const CustomPageViewItem({
    super.key,
    required this.background,
    required this.image,
    required this.titleText,
    required this.subTitleText,
    required this.visible,
  });

  final String background;
  final String image;
  final Widget titleText;
  final String subTitleText;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            width:double.infinity,
            height:MediaQuery.of(context).size.height*0.5,
            child: Stack(
              children: [
                Positioned.fill(
                  child: SvgPicture.asset(background,
                    fit:BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom:0,
                  left: 0,
                  right:0,
                    child: SvgPicture.asset(image),
                ),
                Visibility(
                  visible:visible,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushReplacementNamed(context,AppRoutes.loginView);
                        },
                          child: Text('تخط',
                            style:AppTextStyles.regular13.copyWith(
                              color:const Color(0xff949D9E),
                            ),
                          )
                      ),
                    )
                ),
              ],
            ),
          ),
          const SizedBox(height:64.0,),
          titleText,
          const SizedBox(height:24.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0),
            child: Text(subTitleText,
              textAlign:TextAlign.center,
              style:AppTextStyles.semiBold13.copyWith(
                color:const Color(0xff4E5556),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
