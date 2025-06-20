import 'package:flutter/material.dart';
import 'package:runway/config/routes/app_route.dart';
import 'package:runway/core/utils/app_strings.dart';
import 'package:runway/core/utils/assets.dart';
import 'package:runway/features/home/data/models/category_model.dart';
import 'package:runway/features/home/presentation/widgets/category_item.dart';

class CatgoryListItem extends StatelessWidget {
  const CatgoryListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length, (index) {
          return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoute.categoryDetailsView);
              },
              child: CategoryItem(categoryModel: categories[index]));
        }),
      ),
    );
  }

  static const List<CategoryModel> categories = [
    CategoryModel(img: Assets.imagesCategoryImageCat1, title: AppStrings.woman),
    CategoryModel(img: Assets.imagesCategoryImageCat2, title: AppStrings.kids),
    CategoryModel(img: Assets.imagesCategoryImageCat3, title: AppStrings.men),
    CategoryModel(img: Assets.imagesCategoryImageCat4, title: AppStrings.deals),
    CategoryModel(img: Assets.imagesCategoryImageCat1, title: AppStrings.woman),
    CategoryModel(img: Assets.imagesCategoryImageCat1, title: AppStrings.woman),
  ];
}
