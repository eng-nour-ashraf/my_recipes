import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' as gt;
import 'package:my_recipes/app/const/getX_Ids.dart';
import 'package:my_recipes/app/enum/app_status.dart';
import 'package:my_recipes/app/network/api_controller.dart';
import 'package:my_recipes/app/sql/models/product_sql_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../app/log/log_controller.dart';
import '../../../app/network/models/recipes_model.dart';
import '../../../app/routes/app_routes.dart';
import '../../../app/sql/sql_controller.dart';

class MainController extends gt.GetxController {
  //  controllers
  LogController logController = gt.Get.find();
  ApiController apiController = gt.Get.find();
  SqlController sqlController = gt.Get.find();

  //***************************************************************************************************************

  //  variables
  AppStatus appStatus = AppStatus.success;
  RefreshController refreshController =
      RefreshController(initialRefresh: false);
  List<RecipesModel> recipesList = [];
  List<RecipesModel> recipesListSql = [];

  //***************************************************************************************************************
  //  status

  @override
  void onInit() {
    logController.onRed(msg: 'init Main');
    onLoadRecipesFromSql();
    onHome(isLoading: true);
    super.onInit();
  }

  @override
  void onReady() {
    logController.onRed(msg: 'ready Main');
    super.onReady();
  }

  @override
  void onClose() {
    logController.onRed(msg: 'close Main');
    super.onClose();
  }

//***************************************************************************************************************

//  methods
  void onHome({required bool isLoading, num? page, bool clear = false}) async {
    if (isLoading) {
      appStatus = AppStatus.loading;
      update([GetXIds.mainRecipesList]);
    }
    await apiController.onRecipes().then((Response response) {
      if (clear) {
        recipesList.clear();
      }
      recipesList = List<RecipesModel>.from(
          response.data.map((i) => RecipesModel.fromJson(i)));
      for (var i = 0; i < recipesList.length; i++) {
        for (var elementSql in recipesListSql) {
          if (elementSql.id == recipesList[i].id) {
            recipesList[i].isFavourite = true;
          }
        }
      }
      appStatus = AppStatus.success;
      refreshController.refreshCompleted();
      update([GetXIds.mainRecipesList]);
    });
  }

  void onItemClick({required int index}) {
    gt.Get.toNamed(AppRoutes.details,arguments: recipesList[index]);
  }

  void onFavourite({required int index}) {
    if(recipesList[index].isFavourite){
      recipesList[index].isFavourite = false;
      sqlController.deleteItem(recipesList[index].id!);
    }else{
      recipesList[index].isFavourite = true;
      sqlController.insert(ProductSqlModel(
          productId: recipesList[index].id!,
          productJson: jsonEncode(recipesList[index])));
    }
    update([GetXIds.mainRecipesList]);
  }

  Future<void> onLoadRecipesFromSql() async {
    var productsSqlList = await sqlController.loadAll();
    for (var element in productsSqlList) {
      final str = jsonDecode(element.productJson!);
      var recipesModel = RecipesModel.fromJson(str);
      recipesListSql.add(recipesModel);
    }
  }
}
