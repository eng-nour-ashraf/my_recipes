import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/app/const/getX_Ids.dart';
import 'package:my_recipes/modules/pages/details/details_controller.dart';
import 'package:my_recipes/modules/pages/home/home_controller.dart';

import '../../../../app/const/colors.dart';
import '../../../../app/const/text_styles.dart';
import '../../../../app/translations/locale_keys.dart';

class DetailsAppBar extends StatelessWidget {
  final DetailsController controller;
  const DetailsAppBar({
    super.key, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColors.gold3Color,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 1.0),
                blurRadius: 2,
                color: AppColors.gray200Color)
          ],
         ),
      child: Row(
        children: [
          const SizedBox(
            width: 33,
          ),
          Expanded(
            child: Text(
              controller.recipesModel!.name!,
              textAlign: TextAlign.center,
              style:
                  AppTextStyles.onHeadingH4Style(color: AppColors.blackColor),
            ),
          ),
          IconButton(
              onPressed: () => controller.onBack(),
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 30,
              )),
        ],
      ),
    );
  }
}
