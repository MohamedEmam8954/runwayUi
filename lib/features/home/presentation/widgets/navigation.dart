import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:runway/core/utils/app_strings.dart';
import 'package:runway/core/utils/assets.dart';

class Navigation extends StatefulWidget {
  const Navigation({
    super.key,
  });

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        currentIndex = value;

        setState(() {});
      },
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.imagesIconsHome),
            label: AppStrings.home),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.imagesIconsFavorite,
            ),
            label: AppStrings.fav),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.imagesIconsBag),
            label: AppStrings.bag),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.imagesIconsProfile,
            height: 32,
          ),
          label: AppStrings.profile,
        ),
      ],
    );
  }
}
