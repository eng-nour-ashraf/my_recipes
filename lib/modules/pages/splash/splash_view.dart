import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/modules/pages/splash/widgets/splash_btn.dart';
import 'package:my_recipes/modules/pages/splash/widgets/splash_text.dart';
import '../../general_widgets/app_loading.dart';
import 'splash_controller.dart';
import 'widgets/splash_img.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SplashImg(),
          Expanded(
            child: ListView(
              children: [
                const SplashText(),
                SplashBtn(controller: controller),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
