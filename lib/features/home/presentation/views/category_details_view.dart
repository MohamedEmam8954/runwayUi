import 'package:flutter/material.dart';
import 'package:runway/core/utils/app_strings.dart';
import 'package:runway/core/utils/assets.dart';
import 'package:runway/core/widgets/custom_appbar.dart';
import 'package:runway/features/home/presentation/widgets/category_details_body.dart';

class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        suffixIcon: Assets.imagesIconsBag,
        title: AppStrings.men,
      ),
      body: CategoryDetailsBody(),
    );
  }
}
