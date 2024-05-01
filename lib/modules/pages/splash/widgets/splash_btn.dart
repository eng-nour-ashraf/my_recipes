import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/app/translations/locale_keys.dart';
import 'package:my_recipes/modules/pages/splash/splash_controller.dart';
import '../../../../app/const/assets.dart';
import '../../../../app/const/colors.dart';
import '../../../../app/const/constants.dart';
import '../../../../app/const/text_styles.dart';

class SplashBtn extends StatelessWidget {
  final SplashController controller;
  const SplashBtn({
    super.key, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => controller.onLogin(),
      child: Container(
        height: 56,
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.blackColor),
        child: Center(
          child: Text(
            AppLocalKeys.getStarted.tr,
            style: AppTextStyles.onButtonStyle(color: AppColors.whiteColor),
          ),
        ),
      ),
    );
  }
}
