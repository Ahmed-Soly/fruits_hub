import 'package:flutter/material.dart';

import '../app_styles/app_text_styles.dart';

AppBar customAppBar(BuildContext context,{required String titleText})
{
  return AppBar(
    leading:IconButton(
      onPressed:(){
        Navigator.pop(context);
      },
      icon:const Icon(Icons.arrow_back_ios),
    ),
    centerTitle: true,
    title:Text(titleText
      ,style:AppTextStyles.bold19 ,),
  );
}