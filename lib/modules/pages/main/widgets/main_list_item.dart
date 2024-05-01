import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../app/const/colors.dart';
import '../../../../app/const/text_styles.dart';
import '../../../../app/translations/locale_keys.dart';
import '../../../general_widgets/app_loading.dart';
import '../../../general_widgets/custom_animation_list.dart';
import '../main_controller.dart';

class MainListItem extends StatelessWidget {
  final MainController controller;
  final int index;

  const MainListItem({
    super.key,
    required this.controller,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAnimationList(
      scale: true,
      index: index,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => controller.onItemClick(index: index),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 1.0),
                    blurRadius: 2,
                    color: AppColors.gray200Color)
              ],
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  errorWidget: (context, url, error) => const AppLoadingWidget(
                    loadingWidth: 20,
                    loadingHeight: 20,
                  ),
                  placeholder: (context, url) => const AppLoadingWidget(
                    loadingWidth: 20,
                    loadingHeight: 20,
                  ),
                  imageUrl:
                      controller.recipesList[index].image!,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                  controller.recipesList[index].name!,
                textAlign: TextAlign.center,
                style:
                    AppTextStyles.onHeadingH3Style(color: AppColors.blackColor),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  controller.recipesList[index].headline!,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.onHeadingH6Style(
                      color: AppColors.gray600Color),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  controller.recipesList[index].description!,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style:
                      AppTextStyles.onBody4Style(color: AppColors.gray400Color),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => controller.onItemClick(index: index),
                      child: Container(
                        height: 56,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.blackColor),
                        child: Center(
                          child: Text(
                            AppLocalKeys.startCooking.tr,
                            style: AppTextStyles.onButtonStyle(
                                color: AppColors.whiteColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: ()=> controller.onFavourite(index : index),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColors.gold3Color,
                      child: Icon(
                        Icons.favorite,
                        color: controller.recipesList[index].isFavourite ? AppColors.redColor : AppColors.whiteColor,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
