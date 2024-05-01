import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' as gt;
import 'package:my_recipes/app/const/getX_Ids.dart';
import 'package:my_recipes/app/pref/pref_controller.dart';
import 'package:my_recipes/app/routes/app_routes.dart';
import 'package:my_recipes/app/translations/locale_keys.dart';
import 'package:my_recipes/modules/pages/favourite/favourite_view.dart';

import '../../../app/log/log_controller.dart';
import '../main/main_view.dart';

class HomeController extends gt.GetxController {
  //  controllers
  LogController logController = gt.Get.find();
  PrefController prefController = gt.Get.find();

  //***************************************************************************************************************

  //  variables

  var currentIndex = 0;
  var currentTitle = AppLocalKeys.recipes;
  PageController pageController = PageController();
  List<Widget> homeScreenItems = [
    const MainView(),
    const FavouriteView(),
    const Center(child: Text('Not Implemented Yet!'),),
  ];

  //***************************************************************************************************************
  //  status

  @override
  void onInit() {
    logController.onRed(msg: 'init Home');
    super.onInit();
  }

  @override
  void onReady() {
    logController.onRed(msg: 'ready Home');
    super.onReady();
  }

  @override
  void onClose() {
    logController.onRed(msg: 'close Home');
    pageController.dispose();
    super.onClose();
  }

//***************************************************************************************************************

//  methods

  void onBottomNavBarTap(int value) {
    currentIndex = value;
    _onChangeName(value);
    pageController.jumpToPage(value);
    update([GetXIds.homeBottomBar]);
  }

  void onPageChanged(int page) {
    currentIndex = page;
    _onChangeName(page);
    update([GetXIds.homeBottomBar]);
  }

  void _onChangeName(int page){
    switch(page){
      case 0:
        currentTitle = AppLocalKeys.recipes;
        break;
      case 1:
        currentTitle = AppLocalKeys.favourite;
        break;
      case 2:
        currentTitle = AppLocalKeys.profile;
        break;
    }
  }

  void onLogout() {
    prefController.isLogin = false;
    gt.Get.offAllNamed(AppRoutes.splash);
  }
}
