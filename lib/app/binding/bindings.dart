import 'package:get/get.dart';
import '../../modules/pages/splash/splash_controller.dart';
import '../interent/internet_controller.dart';
import '../log/log_controller.dart';
import '../network/api_controller.dart';
import '../pref/pref_controller.dart';
import '../translations/localization_controller.dart';
import '../utils/dialog_controller.dart';
import '../utils/snackbar_controller.dart';
import '../utils/utils_controller.dart';



class AppBindings implements Bindings {
  @override
  void dependencies() {

    // app

    Get.put(ApiController(),permanent: true);
    Get.put(InternetController(),permanent: true);
    Get.lazyPut(() => LogController(), fenix: true);
    Get.lazyPut(() => PrefController(), fenix: true);
    Get.lazyPut(() => LocalizationController(), fenix: true);
    Get.lazyPut(() => UtilsController(), fenix: true);
    Get.lazyPut(() => DialogController(), fenix: true);
    Get.lazyPut(() => SnackBarController(), fenix: true);



    // modules

    Get.lazyPut(() => SplashController(), fenix: true);
  }
}
