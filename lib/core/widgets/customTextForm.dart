import 'package:flutter/material.dart';

import '../app_styles/app_text_styles.dart';


class CustomTextForm extends StatelessWidget {
   const CustomTextForm({super.key,
    required this.hintText,
    required this.textInputType,
    this.suffix,
    this.prefix,
    this.secure,
  });
  final String hintText;
  final TextInputType? textInputType;
  final Widget? suffix;
  final Widget? prefix;
  final bool? secure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType:textInputType,
        obscureText:secure??false,
        decoration:InputDecoration(
         hintText: hintText,
         hintStyle: AppTextStyles.bold13,
         suffixIcon:suffix,
         prefixIcon:prefix,
         filled: true,
         fillColor:const Color(0xffF6FAFA),
         border:OutlineInputBorder(
             borderRadius: BorderRadius.circular(4),
             borderSide: const BorderSide(
               width: 1,
               color: Color(0xFFE6E9E9),
             )),
         focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(4),
             borderSide: const BorderSide(
               width: 1,
               color: Color(0xFFE6E9E9),
             )),
         enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(4),
             borderSide: const BorderSide(
               width: 1,
               color: Color(0xFFE6E9E9),
             )),
         errorBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(12.0),
           borderSide: const BorderSide(color: Colors.red, width: 2.0),
         ),
         contentPadding: const EdgeInsets.symmetric(
           horizontal: 16.0,
           vertical: 16.0,
         ),
       ),
      );
  }
}
