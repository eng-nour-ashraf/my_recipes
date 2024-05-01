import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../app/binding/bindings.dart';
import '../../../app/routes/app_pages.dart';
import '../../../app/routes/app_routes.dart';
import '../../../app/translations/app_translations.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // pref init
  await GetStorage.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // init storage
  final GetStorage getStorage = GetStorage();

  @override
  Widget build(BuildContext context) {
    // init Route
    var initRoute = AppRoutes.splash;
    if(getStorage.read('isLogin') ?? false){
      initRoute = AppRoutes.home;
    }

    return GetMaterialApp(
      title: 'my-Recipes',
      debugShowCheckedModeBanner: false,
      translationsKeys: AppTranslation.translations,
      locale: Locale(getStorage.read('currentLocale') ?? 'en', ''),
      fallbackLocale: const Locale('en', ''),
      initialBinding: AppBindings(),
      defaultTransition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
      getPages: AppPages.routes,
      initialRoute: initRoute,
      unknownRoute: GetPage(
        page: () => const Text('Unknown Route!'),
        name: '/unknown',
      ),
    );
  }
}
