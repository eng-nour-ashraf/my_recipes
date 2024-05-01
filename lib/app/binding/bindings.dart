import 'package:get/get.dart';
import 'package:my_recipes/modules/pages/details/details_controller.dart';
import 'package:my_recipes/modules/pages/favourite/favourite_controller.dart';
import 'package:my_recipes/modules/pages/home/home_controller.dart';
import '../../modules/pages/login/login_controller.dart';
import '../../modules/pages/main/main_controller.dart';
import '../../modules/pages/splash/splash_controller.dart';
import '../log/log_controller.dart';
import '../network/api_controller.dart';
import '../pref/pref_controller.dart';
import '../sql/sql_controller.dart';
import '../translations/localization_controller.dart';
import '../utils/dialog_controller.dart';
import '../utils/snackbar_controller.dart';
import '../utils/utils_controller.dart';



class AppBindings implements Bindings {
  @override
  void dependencies() {

    // app

    Get.put(ApiController(),permanent: true);
    Get.put(SqlController(),permanent: true);
    Get.lazyPut(() => LogController(), fenix: true);
    Get.lazyPut(() => PrefController(), fenix: true);
    Get.lazyPut(() => LocalizationController(), fenix: true);
    Get.lazyPut(() => UtilsController(), fenix: true);
    Get.lazyPut(() => DialogController(), fenix: true);
    Get.lazyPut(() => SnackBarController(), fenix: true);



    // modules

    Get.lazyPut(() => SplashController(), fenix: true);
    Get.lazyPut(() => LoginController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => MainController(), fenix: true);
    Get.lazyPut(() => FavouriteController(), fenix: true);
    Get.lazyPut(() => DetailsController(), fenix: true);

  }
}
