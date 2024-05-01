import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/app/const/getX_Ids.dart';
import 'package:my_recipes/modules/pages/home/home_controller.dart';

import '../../../../app/const/colors.dart';
import '../../../../app/const/text_styles.dart';
import '../../../../app/translations/locale_keys.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        id: GetXIds.homeBottomBar,
        builder: (HomeController controller) {
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
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )),
            child: Row(
              children: [
                SizedBox(
                  width: controller.currentIndex == 2
                      ? 33: 23,
                ),
                Expanded(
                  child: Text(
                    controller.currentTitle.tr,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.onHeadingH3Style(
                        color: AppColors.blackColor),
                  ),
                ),
                controller.currentIndex == 2
                    ? IconButton(
                    onPressed: () => controller.onLogout(),
                    icon: const Icon(
                      Icons.logout,
                      size: 30,
                    ))
                    : const SizedBox(
                  width: 23,
                ),
              ],
            ),
          );
        });
  }
}
