import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:runway/core/utils/app_strings.dart';
import 'package:runway/core/utils/assets.dart';
import 'package:runway/core/widgets/filter_item.dart';

class CategoryActions extends StatelessWidget {
  const CategoryActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.grey.shade100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const FilterItem(
                isPrefix: false,
                title: AppStrings.sortBy,
              ),
              Row(
                spacing: 20,
                children: [
                  const FilterItem(
                    isPrefix: true,
                    title: AppStrings.filter,
                  ),
                  SvgPicture.asset(Assets.imagesIconsCategory),
                  SvgPicture.asset(Assets.imagesIconsProfileGroup),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey.shade100,
        ),
      ],
    );
  }
}
