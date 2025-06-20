import 'package:runway/core/utils/assets.dart';

class CategoryDetailsModel {
  final String img;
  final String title;
  final num price;

  const CategoryDetailsModel(
      {required this.img, required this.title, required this.price});

  static const List<CategoryDetailsModel> category = [
    CategoryDetailsModel(
        img: Assets.imagesManCategoryImage1, title: "Top man black", price: 20),
    CategoryDetailsModel(
        img: Assets.imagesManCategoryImage2,
        title: "Deep gray essential regular",
        price: 35),
    CategoryDetailsModel(
        img: Assets.imagesManCategoryImage3,
        title: "Top man black with Trous..",
        price: 45),
    CategoryDetailsModel(
        img: Assets.imagesManCategoryImage2,
        title: "Gray coat and white T-sh..",
        price: 30),
    CategoryDetailsModel(
        img: Assets.imagesManCategoryImage1, title: "Top man black", price: 20),
    CategoryDetailsModel(
        img: Assets.imagesManCategoryImage2,
        title: "Deep gray essential regular",
        price: 35),
    CategoryDetailsModel(
        img: Assets.imagesManCategoryImage3,
        title: "Top man black with Trous..",
        price: 45),
    CategoryDetailsModel(
        img: Assets.imagesManCategoryImage2,
        title: "Gray coat and white T-sh..",
        price: 30),
  ];
}
