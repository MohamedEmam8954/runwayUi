import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:runway/config/routes/app_route.dart';
import 'package:runway/core/utils/assets.dart';
import 'package:runway/features/home/data/models/category_details_model.dart';

class CategoryDetailsItem extends StatelessWidget {
  const CategoryDetailsItem({super.key, required this.categoryDetailsModel});

  final CategoryDetailsModel categoryDetailsModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoute.showProductView,
            arguments: categoryDetailsModel);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 255,
            decoration: BoxDecoration(
              color: const Color(0xffececec),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Image.asset(
              categoryDetailsModel.img,
              fit: BoxFit.contain,
            ),
          ),
          const Gap(14),
          Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            categoryDetailsModel.title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "£${categoryDetailsModel.price}",
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              SvgPicture.asset(Assets.imagesIconsFavorite),
            ],
          )
        ],
      ),
    );
  }
}
