import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/features/home/data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryModel,
  });

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            child: Image.asset(categoryModel.img),
          ),
          const Gap(15),
          Text(
            categoryModel.title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
