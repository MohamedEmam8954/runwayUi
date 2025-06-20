import 'package:flutter/material.dart';
import 'package:runway/core/utils/app_strings.dart';
import 'package:runway/core/utils/assets.dart';
import 'package:runway/core/widgets/custom_appbar.dart';
import 'package:runway/features/home/presentation/widgets/home_view_body.dart';
import 'package:runway/features/home/presentation/widgets/navigation.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
          prefixIcon: Assets.imagesIconsChart,
          suffixIcon: Assets.imagesIconsNotification,
          title: AppStrings.runway),
      body: HomeViewBody(),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: Navigation(),
      ),
    );
  }
}
