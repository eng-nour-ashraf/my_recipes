import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/app/const/text_styles.dart';
import 'package:my_recipes/app/translations/locale_keys.dart';

import '../login_controller.dart';

class LoginRegister extends StatelessWidget {
  final LoginController controller;
  const LoginRegister({
    Key? key, required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child:  Text(
            AppLocalKeys.noAccount.tr,
            style: AppTextStyles.onBody2Style(),
          ),
        ),
        GestureDetector(
          onTap: controller.onRegister,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              AppLocalKeys.register.tr,
              style: AppTextStyles.onBody2Style(),
            ),
          ),
        ),
      ],
    );
  }
}
