import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../app/const/colors.dart';
import 'app_loading.dart';

class PullToRefresh extends StatelessWidget {
  final VoidCallback? onRefresh;
  final RefreshController controller;
  final Color color;
  final Widget child;

  const PullToRefresh(
      {Key? key,
      this.color = AppColors.secondaryColor,
      required this.controller,
      required this.onRefresh,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      header: WaterDropHeader(
        waterDropColor: color,
        refresh: AppLoadingWidget(
          color: color,
          loadingWidth: 20,
          loadingHeight: 20,
        ),
        complete: Icon(
          Icons.check_circle,
          size: 20,
          color: color,
        ),
      ),
      onRefresh: onRefresh,
      controller: controller,
      child: child,
    );
  }
}
