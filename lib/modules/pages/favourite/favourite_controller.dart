import 'dart:convert';

import 'package:get/get.dart' as gt;
import 'package:my_recipes/app/enum/app_status.dart';
import 'package:my_recipes/app/routes/app_routes.dart';

import '../../../app/const/getX_Ids.dart';
import '../../../app/log/log_controller.dart';
import '../../../app/network/models/recipes_model.dart';
import '../../../app/sql/sql_controller.dart';

class FavouriteController extends gt.GetxController {
  //  controllers
  LogController logController = gt.Get.find();
  SqlController sqlController = gt.Get.find();

  //***************************************************************************************************************

  //  variables
  AppStatus appStatus = AppStatus.init;
  List<RecipesModel> recipesListSql = [];

  //***************************************************************************************************************
  //  status

  @override
  void onInit() {
    logController.onRed(msg: 'init Home');
    onLoadRecipesFromSql();
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
    super.onClose();
  }

//***************************************************************************************************************

//  methods

  void onItemClick({required int index}) {
    gt.Get.toNamed(AppRoutes.details,arguments: recipesListSql[index]);
  }

  Future<void> onLoadRecipesFromSql() async {
    appStatus = AppStatus.loading;
    update([GetXIds.favouriteRecipesList]);
    var productsSqlList = await sqlController.loadAll();
    for (var element in productsSqlList) {
      final str = jsonDecode(element.productJson!);
      var recipesModel = RecipesModel.fromJson(str);
      recipesModel.isFavourite = true;
      recipesListSql.add(recipesModel);
    }
    appStatus = AppStatus.success;
    update([GetXIds.favouriteRecipesList]);
  }

  void onRefreshList(){
    recipesListSql.clear();
    onLoadRecipesFromSql();
  }

  void onFavourite({required int index}) {
    sqlController.deleteItem(recipesListSql[index].id!);
    recipesListSql.removeAt(index);
    update([GetXIds.favouriteRecipesList]);
  }
}
