import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/app_router.dart';

import '../../../generated/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds:5),(){
        Navigator.pushReplacementNamed(context,AppRoutes.onBoardView);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      crossAxisAlignment:CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment:MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(
            Assets.imagesFruitLogo
        ),
        SvgPicture.asset(Assets.imagesCircles,
          fit:BoxFit.fill,
        ),
      ],
    );
  }
}

