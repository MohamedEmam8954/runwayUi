import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:runway/core/utils/assets.dart';
import 'package:runway/core/widgets/filter_item.dart';

class ModelBottomSheetData extends StatelessWidget {
  const ModelBottomSheetData({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 138,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ListView(
        controller: scrollController,
        children: [
          const Gap(10),
          Center(
            child: Container(
              width: 42,
              height: 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xffd9d9d9),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Classic Tailored Fit Men's Dress Shirt",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "£35",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(Assets.imagesIconsFavorite),
                          const Gap(10),
                          const Text(
                            "450",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Gap(50),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 13),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadiusDirectional.circular(6),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FilterItem(isPrefix: false, title: "Select Color"),
                      SizedBox(height: 31, child: VerticalDivider()),
                      FilterItem(isPrefix: false, title: "Select Size"),
                    ],
                  ),
                ),
                const Gap(10),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "ADD TO BAG",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
