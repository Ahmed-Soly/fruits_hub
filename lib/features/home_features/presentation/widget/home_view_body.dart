import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home_features/presentation/widget/best_selling_header.dart';
import 'package:fruits_hub/features/home_features/presentation/widget/custom_home_app_bar.dart';
import 'package:fruits_hub/features/home_features/presentation/widget/slid_list.dart';
import '../../../../core/widgets/search_text_field.dart';
import 'best_selling_list.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomHomeAppBar(),
          SizedBox(height: 16,),
          SearchTextField(),
          SizedBox(height: 12,),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SlidList(),
                      SizedBox(height: 12,),
                      BestSellingHeader(),
                      SizedBox(height: 8,),
                    ],
                  ),
                ),
                BestSellingList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
