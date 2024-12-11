import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruits_hub/features/home_features/presentation/widget/slide_button.dart';
import '../../../../core/app_styles/app_text_styles.dart';
import '../../../../generated/assets.dart';

class SlideBody extends StatelessWidget {
  const SlideBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width-32;
    return ClipRRect(
      borderRadius:BorderRadius.circular(4.0),
      child: SizedBox(
        width: width,
        child: AspectRatio(
          aspectRatio: 342/158,
          child: Stack(
            children: [
              Container(
                width: width*0.5,
                decoration:const BoxDecoration(
                  image: DecorationImage(
                    image:svg.Svg(Assets.imagesCurve),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 33.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height:25,),
                      Text('عروض العيد',
                        style:AppTextStyles.regular13.copyWith(
                            color:Colors.white,
                        ),),
                      const Spacer(),
                      Text('خصم 25%',
                        style:AppTextStyles.bold19.copyWith(
                          color:Colors.white,
                        ),),
                      const SizedBox(height: 7,),
                      const SlideButton(),
                      const SizedBox(height: 30,),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                right: width*0.4,
                child: SvgPicture.asset(Assets.imagesOnBoardingImage2)
              )
            ],
          ),
        ),
      ),
    );
  }
}
