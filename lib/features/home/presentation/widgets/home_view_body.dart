import 'package:flutter/material.dart';
import 'package:runway/core/utils/assets.dart';
import 'package:runway/features/home/sections/category_section.dart';
import 'package:video_player/video_player.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    videoPlayerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: _controller.value.isInitialized
              ? Center(
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        const CategorySection()
      ],
    );
  }

  void videoPlayerController() {
    _controller = VideoPlayerController.asset(Assets.videoRunwayVideo)
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      })
      ..setLooping(true);
  }
}
