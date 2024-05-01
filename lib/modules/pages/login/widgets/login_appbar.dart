import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/const/colors.dart';
import '../../../../app/const/text_styles.dart';
import '../../../../app/translations/locale_keys.dart';
import '../login_controller.dart';

class LoginAppBar extends StatelessWidget {
  final LoginController controller;
  const LoginAppBar({
    super.key, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108,
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
      child: Column(
        children: [
          const Spacer(),
          Row(
            children: [
              const SizedBox(
                width: 23,
              ),
              GestureDetector(
                  behavior: HitTestBehavior.opaque,
                onTap: ()=> controller.onBack(),
                  child: const Icon(Icons.arrow_back_ios, size: 25)),
              Expanded(
                child: Text(
                  AppLocalKeys.login.tr,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.onHeadingH3Style(
                      color: AppColors.blackColor),
                ),
              ),
              const SizedBox(
                width: 47,
              ),
            ],
          ),
          const SizedBox(
            height: 23,
          )
        ],
      ),
    );
  }
}
