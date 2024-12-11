import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../generated/assets.dart';
import '../app_styles/app_colors.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool taped=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          taped=!taped;
        });
      },
      child: SizedBox(
        width:24.0,
        height:24.0,
        child: AnimatedContainer(
          duration: const Duration(milliseconds:100),
          decoration:ShapeDecoration(
            color: taped?AppColor.primaryColor:Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(8.0),
              side:BorderSide(
                width: 1.5,
                color:taped?AppColor.primaryColor:const Color(0xffDDDFDF),
              ),
                 ),
             ),
          child:Padding(
            padding: const EdgeInsets.all(2.0),
            child: SvgPicture.asset(Assets.imagesCheck),
          ),
        ),
      ),
    );
  }
}
