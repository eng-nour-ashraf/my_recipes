import 'dart:convert';

import 'package:get/get.dart' as gt;
import 'package:my_recipes/app/utils/snackbar_controller.dart';
import 'package:my_recipes/modules/pages/favourite/favourite_controller.dart';
import 'package:my_recipes/modules/pages/main/main_controller.dart';
import '../../../app/const/getX_Ids.dart';
import '../../../app/log/log_controller.dart';
import '../../../app/network/models/recipes_model.dart';
import '../../../app/pref/pref_controller.dart';
import '../../../app/sql/models/product_sql_model.dart';
import '../../../app/sql/sql_controller.dart';
import '../../../app/utils/utils_controller.dart';

class DetailsController extends gt.GetxController {
  //  Controllers

  LogController logController = gt.Get.find();
  PrefController prefController = gt.Get.find();
  UtilsController utilsController = gt.Get.find();
  SnackBarController snackBarController = gt.Get.find();
  SqlController sqlController = gt.Get.find();

  //***************************************************************************************************************
  //  Variables
  RecipesModel? recipesModel;
  //***************************************************************************************************************

  //  Status

  @override
  void onInit() {
    logController.onRed(msg: 'Init Login');
    recipesModel = gt.Get.arguments;
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

  void onBack() {
    gt.Get.back();
  }

  void onFavourite() {
    if(recipesModel!.isFavourite){
      recipesModel!.isFavourite = false;
      sqlController.deleteItem(recipesModel!.id!);
    }else{
      recipesModel!.isFavourite = true;
      sqlController.insert(ProductSqlModel(
          productId: recipesModel!.id!,
          productJson: jsonEncode(recipesModel!)));
    }
    MainController mainController = gt.Get.find();
    mainController.onHome(isLoading: false,clear: true);
    FavouriteController favouriteController = gt.Get.find();
    favouriteController.onRefreshList();
    update([GetXIds.detailsRecipesInfo]);
  }

}
