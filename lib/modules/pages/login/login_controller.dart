import 'package:flutter/material.dart';
import 'package:get/get.dart' as gt;
import 'package:my_recipes/app/routes/app_routes.dart';
import 'package:my_recipes/app/translations/locale_keys.dart';
import 'package:my_recipes/app/utils/snackbar_controller.dart';
import '../../../app/log/log_controller.dart';
import '../../../app/pref/pref_controller.dart';
import '../../../app/utils/utils_controller.dart';

class LoginController extends gt.GetxController {
  //  Controllers

  LogController logController = gt.Get.find();
  PrefController prefController = gt.Get.find();
  UtilsController utilsController = gt.Get.find();
  SnackBarController snackBarController = gt.Get.find();

  //***************************************************************************************************************
  //  Variables

  bool get isValidEmail =>
      utilsController.onIsEmail(email: emailController.text);
  TextEditingController emailController = TextEditingController();

  bool get isValidPassword =>
      passwordController.text.length >= 6;
  TextEditingController passwordController = TextEditingController();

  //***************************************************************************************************************

  //  Status

  @override
  void onInit() {
    logController.onRed(msg: 'Init Login');
    super.onInit();
  }

  @override
  void onReady() {
    logController.onRed(msg: 'Ready Login');
    super.onReady();
  }

  @override
  void onClose() {
    logController.onRed(msg: 'Close Login');
    super.onClose();
  }

  //***************************************************************************************************************

  //  Methods

  void onLogin() {
    if(!isValidEmail){
      snackBarController.onFailedSneakBar(text: AppLocalKeys.emailError.tr);
    }else if(!isValidPassword){
      snackBarController.onFailedSneakBar(text: AppLocalKeys.passwordError.tr);
    }else{
      snackBarController.onSuccessSneakBar(text: AppLocalKeys.successLogin.tr);
      prefController.isLogin = true;
      gt.Get.toNamed(AppRoutes.home);
    }
  }

  void onBack() {
    gt.Get.back();
  }

  void onRegister() {
    snackBarController.onFailedSneakBar(text: 'Not Implemented Yet!');
  }
}
