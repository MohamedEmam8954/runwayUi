import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/core/widgets/category_action.dart';
import 'package:runway/features/home/presentation/widgets/category_details_gridview.dart';

class CategoryDetailsBody extends StatelessWidget {
  const CategoryDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CategoryActions(),
              Gap(15),
            ],
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          sliver: CategoryDetilsGridView(),
        ),
      ],
    );
  }
}
