import 'package:flutter/material.dart';

import '../../app/const/colors.dart';
import '../../app/enum/app_status.dart';

class LoadingWidget extends StatelessWidget {
  final Color color;
  final Widget child;
  final AppStatus appStatus;
  final double width;
  final double height;
  final EdgeInsetsGeometry margin;

  const LoadingWidget(
      {super.key,
      this.color = AppColors.secondaryColor,
      this.width = 37,
      this.height = 37,
      this.margin = EdgeInsets.zero,
      required this.appStatus, required this.child});

  @override
  Widget build(BuildContext context) {
    if (appStatus == AppStatus.success) {
      return Container(
          margin: margin,
          width: 37,
          height: 37,
          child: CircularProgressIndicator(
            color: color,
          ));
    } else {
      return Container(
            margin: margin,
            width: 37,
            height: 37,
            child: CircularProgressIndicator(
              color: color,
            ));
    }
  }
}
