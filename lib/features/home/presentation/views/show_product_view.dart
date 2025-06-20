import 'package:flutter/material.dart';
import 'package:runway/core/utils/app_strings.dart';
import 'package:runway/core/utils/assets.dart';
import 'package:runway/core/widgets/custom_appbar.dart';
import 'package:runway/features/home/data/models/category_details_model.dart';
import 'package:runway/features/home/presentation/widgets/show_product_view_body.dart';

class ShowProductView extends StatelessWidget {
  const ShowProductView({super.key, required this.categoryDetailsModel});

  final CategoryDetailsModel categoryDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        suffixIcon: Assets.imagesIconsBag,
        title: AppStrings.men,
      ),
      body: ShowProductViewBody(
        categoryDetailsModel: categoryDetailsModel,
      ),
    );
  }
}
