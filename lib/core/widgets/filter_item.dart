import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:runway/core/utils/assets.dart';

class FilterItem extends StatelessWidget {
  const FilterItem({super.key, required this.isPrefix, required this.title});

  final bool isPrefix;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isPrefix
            ? SvgPicture.asset(Assets.imagesIconsFilter)
            : const SizedBox.shrink(),
        isPrefix ? const Gap(5) : const SizedBox.shrink(),
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        !isPrefix ? const Gap(23) : const SizedBox.shrink(),
        !isPrefix
            ? SvgPicture.asset(Assets.imagesIconsSortby)
            : const SizedBox.shrink(),
      ],
    );
  }
}
