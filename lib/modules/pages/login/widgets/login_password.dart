import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/modules/pages/login/login_controller.dart';
import '../../../../app/const/colors.dart';
import '../../../../app/const/text_styles.dart';
import '../../../../app/translations/locale_keys.dart';

class LoginPassword extends StatelessWidget {
  final LoginController controller;

  const LoginPassword({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                const Icon(Icons.lock),
                Expanded(
                  child: TextFormField(
                    style:
                        AppTextStyles.onBody3Style(color: AppColors.backgroundColor),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    controller: controller.passwordController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
                      hintText: AppLocalKeys.password.tr,
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
