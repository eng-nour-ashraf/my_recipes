import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../../app/const/colors.dart';
import '../../app/const/text_styles.dart';
import '../../app/interent/internet_controller.dart';
import '../../app/translations/locale_keys.dart';

class NoInternetWidget extends StatelessWidget {
  final Widget mainView;

  const NoInternetWidget({Key? key, required this.mainView}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(builder: (InternetController internetController) {
      return internetController.connectionType.value ==
              InternetConnectionStatus.disconnected
          ? WillPopScope(
              onWillPop: _onWillPop,
              child: Scaffold(
                body: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image.asset(AppAssets.wifi,width: 110,height: 110,),
                      const SizedBox(height: 30,),
                      Text(
                        AppLocalKeys.noInternet.tr,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.onHeadingH3Style(color: AppColors.gray600Color),
                      ),
                      const SizedBox(height: 16,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Text(
                          AppLocalKeys.noInternetMsg.tr,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.onBody3Style(color: AppColors.gray400Color,height: 1.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : mainView;
    });
  }

  Future<bool> _onWillPop() async {
    return (await SystemChannels.platform
            .invokeMethod('SystemNavigator.pop')) ??
        false;
  }
}
