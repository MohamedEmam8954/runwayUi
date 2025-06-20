import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/features/home/presentation/widgets/category_list_items.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(17.5),
          Text(
            "Category",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Gap(17.5),
          CatgoryListItem()
        ],
      ),
    );
  }
}
