import 'package:flutter/material.dart';
import 'package:runway/features/home/data/models/category_details_model.dart';
import 'package:runway/features/home/presentation/widgets/category_details_item.dart';

class CategoryDetilsGridView extends StatelessWidget {
  const CategoryDetilsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: CategoryDetailsModel.category.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 50 / 100,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        return CategoryDetailsItem(
          categoryDetailsModel: CategoryDetailsModel.category[index],
        );
      },
    );
  }
}
