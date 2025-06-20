import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:runway/core/utils/assets.dart';

class AnimationLine extends StatefulWidget {
  const AnimationLine({super.key});

  @override
  State<AnimationLine> createState() => _AnimationLineState();
}

class _AnimationLineState extends State<AnimationLine>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..forward();
    animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return ShaderMask(
          blendMode: BlendMode.dstIn,
          shaderCallback: (bounds) {
            return LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: const [Colors.white, Colors.transparent],
              stops: [animation.value, animation.value],
            ).createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            );
          },
          child: child,
        );
      },
      child: SvgPicture.asset(Assets.imagesLogoLogoLine),
    );
  }
}
