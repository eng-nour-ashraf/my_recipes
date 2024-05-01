import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app/const/colors.dart';
import '../../app/const/text_styles.dart';
import '../../app/translations/locale_keys.dart';

class AppLoadingWidget extends StatelessWidget {
  final Color color;
  final double width;
  final double loadingWidth;
  final double height;
  final double loadingHeight;
  final bool withText;
  final String text;
  final EdgeInsetsGeometry margin;

  const AppLoadingWidget(
      {super.key,
      this.color = AppColors.secondaryColor,
      this.width = 37,
        this.text = AppLocalKeys.loading,
      this.loadingWidth = 37,
      this.height = 37,
      this.loadingHeight = 37,
      this.margin = EdgeInsets.zero,
      this.withText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        width: withText ? 200 : width,
        height: withText ? 50 : height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: loadingWidth,
              height: loadingHeight,
              child: CircularProgressIndicator(
                color: color,
              ),
            ),
            SizedBox(
              width: withText ? 16 : 0,
            ),
            withText
                ? Text(
                    text.tr,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.onHeadingH6Style(
                        color: AppColors.blackColor),
                  )
                : Container(),
          ],
        ));
  }
}
