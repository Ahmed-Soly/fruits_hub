import 'package:flutter/material.dart';
import 'package:fruits_hub/core/app_styles/app_colors.dart';

import '../../generated/assets.dart';
import '../app_styles/app_text_styles.dart';

class ProductItemBody extends StatelessWidget {
  const ProductItemBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:const Color(0xffF3F5F7),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(onPressed: (){},
                icon: const Icon(Icons.favorite_outline),
            ),
          ),
          Positioned.fill(
              child: Column(
                children: [
                  Image.asset(Assets.imagesProduct1),
                  const SizedBox(height: 24,),
                  ListTile(
                    title:Text('فراولة',
                      style: AppTextStyles.semiBold13,),
                    subtitle: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: '30جنية',
                              style: AppTextStyles.bold13.copyWith(color:const Color(0xffF4A91F,))),
                            TextSpan(text: ' ',
                              style: AppTextStyles.semiBold13,),
                            TextSpan(text: '/',
                              style: AppTextStyles.semiBold13,),
                            TextSpan(text: ' ',
                              style: AppTextStyles.semiBold13,),
                            TextSpan(text: 'الكيلو',
                              style: AppTextStyles.semiBold13.copyWith(
                                  color:const Color(0xffF8C76D),
                              ),),
                          ],),),
                    trailing: CircleAvatar(
                      backgroundColor:AppColor.primaryColor,
                      child: IconButton(onPressed: (){},
                          icon: const Icon(Icons.add,color:Colors.white,),
                      ),
                    ),
                  )

                ],
              ),
          ),
        ],
      ),
    );
  }
}
