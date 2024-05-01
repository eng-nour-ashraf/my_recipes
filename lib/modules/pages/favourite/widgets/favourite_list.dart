import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/app/const/getX_Ids.dart';
import 'package:my_recipes/modules/pages/favourite/favourite_controller.dart';
import '../../../../app/enum/app_status.dart';
import '../../../general_widgets/pull_to_refresh.dart';
import '../../../general_widgets/shimmer_loading.dart';
import 'favourite_list_item.dart';

class FavouriteList extends StatelessWidget {
  const FavouriteList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        id: GetXIds.favouriteRecipesList,
        builder: (FavouriteController controller) {
          return controller.appStatus == AppStatus.success
              ? ListView.builder(
                  itemCount: controller.recipesListSql.length,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  itemBuilder: (context, index) {
                    return FavouriteListItem(
                        controller: controller, index: index);
                  },
                )
              : const ShimmerLoadingWidget(
                  height: 400,
                );
        });
  }
}
