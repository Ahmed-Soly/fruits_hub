import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home_features/presentation/widget/slide_body.dart';

class SlidList extends StatelessWidget {
  const SlidList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:List.generate(10,(index){
         return const Padding(
           padding: EdgeInsets.only(left:8.0),
           child: SlideBody(),
         );
        })
      ),
    );
  }
}
