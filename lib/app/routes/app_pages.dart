import 'package:get/get.dart';
import '../../modules/pages/splash/splash_view.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      // fullscreenDialog: true,
      page: () => SplashView(),
    ),
  ];
}
