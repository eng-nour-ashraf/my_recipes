import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../general_widgets/app_loading.dart';
import 'splash_controller.dart';
import 'widgets/splash_img.dart';

class SplashView extends GetView<SplashController> {
  final SplashController splashController = Get.find();
  SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SplashImg(),
              AppLoadingWidget(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height < 732 ? 33: 66),
              )
            ],
          ),
        ],
      ),
    );
  }
}
