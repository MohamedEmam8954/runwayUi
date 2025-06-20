import 'package:flutter/material.dart';
import 'package:runway/core/widgets/category_action.dart';
import 'package:runway/features/home/data/models/category_details_model.dart';
import 'package:runway/features/home/presentation/widgets/model_bottom_sheet_data.dart';

class ShowProductViewBody extends StatefulWidget {
  const ShowProductViewBody({super.key, required this.categoryDetailsModel});
  final CategoryDetailsModel categoryDetailsModel;

  @override
  State<ShowProductViewBody> createState() => _ShowProductViewBodyState();
}

class _ShowProductViewBodyState extends State<ShowProductViewBody> {
  late ScrollController scrollController;
  @override
  void initState() {
    scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showModelBottomSheet();
    });
    super.initState();
  }

  _showModelBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      barrierColor: Colors.transparent,
      isDismissible: false,
      enableDrag: false,
      context: context,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.17,
          minChildSize: 0.13,
          maxChildSize: 0.8,
          expand: false,
          builder: (context, scrollController) {
            return ModelBottomSheetData(
              scrollController: scrollController,
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryActions(),
        AspectRatio(
          aspectRatio: 200 / 310,
          child: Image.asset(
            widget.categoryDetailsModel.img,
          ),
        ),
      ],
    );
  }
}
