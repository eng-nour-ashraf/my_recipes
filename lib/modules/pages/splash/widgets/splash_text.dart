import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/app/translations/locale_keys.dart';
import '../../../../app/const/assets.dart';
import '../../../../app/const/colors.dart';
import '../../../../app/const/constants.dart';
import '../../../../app/const/text_styles.dart';

class SplashText extends StatelessWidget {
  const SplashText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          AppLocalKeys.splashTitle.tr,
          textAlign: TextAlign.center,
          style: AppTextStyles.onHeadingH2Style(
              height: 1.2, color: AppColors.blackColor),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          AppLocalKeys.splashMsg.tr,
          textAlign: TextAlign.center,
          style: AppTextStyles.onBody2Style(color: AppColors.blackColor),
        ),
      ],
    );
  }
}
