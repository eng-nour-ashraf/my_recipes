import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/app/const/getX_Ids.dart';
import '../../../../app/const/assets.dart';
import '../../../../app/const/colors.dart';
import '../../../../app/enum/app_status.dart';
import '../../../../app/translations/locale_keys.dart';
import '../../../general_widgets/pull_to_refresh.dart';
import '../../../general_widgets/shimmer_loading.dart';
import '../main_controller.dart';
import 'main_list_item.dart';

class MainList extends StatelessWidget {
  const MainList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        id: GetXIds.mainRecipesList,
        builder: (MainController controller) {
          return controller.appStatus == AppStatus.success
              ? PullToRefresh(
                  onRefresh: () =>
                      controller.onHome(isLoading: false, clear: true),
                  controller: controller.refreshController,
                  child: ListView.builder(
                    itemCount: controller.recipesList.length,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    itemBuilder: (context, index) {
                      return MainListItem(controller: controller, index: index);
                    },
                  ),
                )
              : const ShimmerLoadingWidget(
                  height: 400,
                );
        });
  }
}
