import 'package:get/get.dart';
import 'package:my_recipes/modules/pages/home/home_view.dart';
import 'package:my_recipes/modules/pages/login/login_view.dart';
import '../../modules/pages/splash/splash_view.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginView(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
    ),
  ];
}
