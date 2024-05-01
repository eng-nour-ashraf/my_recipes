import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/modules/pages/login/login_controller.dart';
import '../../../../app/const/colors.dart';
import '../../../../app/const/text_styles.dart';
import '../../../../app/translations/locale_keys.dart';


class LoginEmail extends StatelessWidget {
  final LoginController controller;

  const LoginEmail({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 48,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 1.0),
                    blurRadius: 2,
                    color: AppColors.gray200Color)
              ],
              color: AppColors.gold3Color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                const SizedBox(width: 16,),
                const Icon(Icons.email),
                Expanded(
                  child: TextFormField(
                    style: AppTextStyles.onBody3Style(
                        color: AppColors.backgroundColor),
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 11),
                      hintText: AppLocalKeys.email.tr,
                      hintStyle: AppTextStyles.onBody3Style(
                          color: AppColors.blackColor.withOpacity(0.6)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
