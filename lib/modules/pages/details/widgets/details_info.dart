import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/app/const/getX_Ids.dart';
import 'package:my_recipes/modules/pages/details/details_controller.dart';
import '../../../../app/const/colors.dart';
import '../../../../app/const/text_styles.dart';
import '../../../general_widgets/app_loading.dart';

class DetailsInfo extends StatelessWidget {


  const DetailsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      id: GetXIds.detailsRecipesInfo,
      builder: (DetailsController controller) {
        return Column(
          children: [
            Stack(
              children: [
                CachedNetworkImage(
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  errorWidget: (context, url, error) => const AppLoadingWidget(
                    loadingWidth: 20,
                    loadingHeight: 20,
                  ),
                  placeholder: (context, url) => const AppLoadingWidget(
                    loadingWidth: 20,
                    loadingHeight: 20,
                  ),
                  imageUrl:
                  controller.recipesModel!.image!,
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  child: GestureDetector(
                    onTap: ()=> controller.onFavourite(),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColors.gold3Color,
                      child: Icon(
                        Icons.favorite,
                        color: controller.recipesModel!.isFavourite ? AppColors.redColor : AppColors.whiteColor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              controller.recipesModel!.name!,
              textAlign: TextAlign.center,
              style:
              AppTextStyles.onHeadingH2Style(color: AppColors.blackColor),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                controller.recipesModel!.headline!,
                textAlign: TextAlign.center,
                style: AppTextStyles.onHeadingH4Style(
                    color: AppColors.gray600Color),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                controller.recipesModel!.description!,
                textAlign: TextAlign.center,
                style:
                AppTextStyles.onBody2Style(color: AppColors.gray400Color),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        );
      }
    );
  }
}
