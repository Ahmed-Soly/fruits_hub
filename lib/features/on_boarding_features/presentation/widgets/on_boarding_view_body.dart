import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../../../../core/app_router.dart';
import '../../../../core/app_styles/app_colors.dart';
import '../../../../core/widgets/customButton.dart';
import 'on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  int currentPage=0;
  @override
  void initState() {
    super.initState();
    pageController=PageController();
    pageController.addListener((){
      setState(() {
        currentPage=pageController.page!.round();
      });
    });
  }
  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: OnBoardingPageView(
              controller: pageController,
            )
        ),
        DotsIndicator(
          position:currentPage,
          dotsCount: 2,
          decorator:DotsDecorator(
            activeColor:AppColor.primaryColor,
            color:AppColor.primaryColor.withOpacity(0.5),
          ),
        ),
        Visibility(
          maintainAnimation:true,
          maintainSize: true,
          maintainState: true,
          visible: currentPage == 1 ? true : false,
          child: Padding(
            padding: const EdgeInsets.only(
              right:16.0,
              left: 16.0,
              bottom:43.0,
              top: 30.0
            ),
            child: CustomButton(
              width:double.infinity,
              text: 'ابدأ الان',
              onPressed: (){
                Navigator.pushReplacementNamed(context,AppRoutes.loginView);
              },
            ),
          ),
        ),
      ],
    );
  }
}
