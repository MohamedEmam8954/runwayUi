import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.prefixIcon,
    required this.suffixIcon,
    required this.title,
  });

  final String? prefixIcon;
  final String suffixIcon, title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      toolbarHeight: preferredSize.height,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          prefixIcon != null
              ? SvgPicture.asset(prefixIcon!)
              : const SizedBox.shrink(),
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          SvgPicture.asset(
            suffixIcon,
            width: 27,
            height: 27,
            fit: BoxFit.scaleDown,
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
