import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/modules/pages/login/widgets/login_btn.dart';
import 'package:my_recipes/modules/pages/login/widgets/login_email.dart';
import 'package:my_recipes/modules/pages/login/widgets/login_password.dart';
import 'package:my_recipes/modules/pages/login/widgets/login_register.dart';
import 'login_controller.dart';
import 'widgets/login_appbar.dart';
import 'widgets/login_img.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LoginAppBar(controller: controller,),
          const LoginImg(),
          LoginEmail(controller: controller),
          LoginPassword(controller: controller),
          LoginBtn(controller: controller),
          LoginRegister(controller: controller),
        ],
      ),
    );
  }
}
