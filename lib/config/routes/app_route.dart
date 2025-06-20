import 'package:flutter/material.dart';
import 'package:runway/features/home/data/models/category_details_model.dart';
import 'package:runway/features/home/presentation/views/category_details_view.dart';
import 'package:runway/features/home/presentation/views/home.dart';
import 'package:runway/features/home/presentation/views/show_product_view.dart';
import 'package:runway/features/splash/presentation/views/splash_view.dart';

class AppRoute {
  static const String splashView = "/";
  static const String homeView = "/homeView";
  static const String categoryDetailsView = "/categoryDetailsView";

  static const String showProductView = "/showProductView";

  static Route onGenerateAppRoute(RouteSettings routeSetting) {
    switch (routeSetting.name) {
      case splashView:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );

      case homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );

      case categoryDetailsView:
        return MaterialPageRoute(
          builder: (context) => const CategoryDetailsView(),
        );

      case showProductView:
        final categoryDetailsModel =
            routeSetting.arguments as CategoryDetailsModel;

        return MaterialPageRoute(
          builder: (context) => ShowProductView(
            categoryDetailsModel: categoryDetailsModel,
          ),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route unDefinedRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return const Scaffold(
          body: Center(
            child: Text("unDefinedRoute"),
          ),
        );
      },
    );
  }
}
