import 'package:get/get.dart' as gt;
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
    onSplash();
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

  Future<void> onSplash() async {

    Future.delayed(const Duration(seconds: 3),(){
      // if(prefController.isFirstTime){
      //   gt.Get.offNamed(AppRoutes.initLang,);
      // }else{
      //   if(prefController.isLogin){
      //     gt.Get.offNamed(AppRoutes.home,);
      //   }else{
      //     gt.Get.offNamed(AppRoutes.auth,);
      //   }
      //
      // }
    },);
  }

}
