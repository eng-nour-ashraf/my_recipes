import 'package:get/get.dart' as gt;
import 'package:my_recipes/app/routes/app_routes.dart';
import '../../../app/log/log_controller.dart';
import '../../../app/pref/pref_controller.dart';

class SplashController extends gt.GetxController {

  //  Controllers

  LogController logController = gt.Get.find();
  PrefController prefController = gt.Get.find();

  //***************************************************************************************************************
  //  Variables

  //***************************************************************************************************************

  //  Status

  @override
  void onInit() {
    logController.onRed(msg: 'Init Splash');
    super.onInit();
  }

  @override
  void onReady() {
    logController.onRed(msg: 'Ready Splash');
    super.onReady();
  }

  @override
  void onClose() {
    logController.onRed(msg: 'Close Splash');
    super.onClose();
  }



  //***************************************************************************************************************

  //  Methods

  onLogin() {
    gt.Get.toNamed(AppRoutes.login);
  }

}
