import 'package:flutter/material.dart';

import '../../../../core/widgets/product_item_body.dart';

class BestSellingList extends StatelessWidget {
  const BestSellingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemBuilder: (context, index) {
          return const ProductItemBody();
        },
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 16,
          childAspectRatio: 163/214,
        ),
    );
  }
}
