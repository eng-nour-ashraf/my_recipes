
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class DialogController {

  //Show Custom Dialog
  void onGetDialog({
    double borderRadius = 0,
    Color? backgroundColor,
    required Widget widget,
    bool noBack = false,
  }) {
    Get.defaultDialog(
        contentPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        onWillPop: noBack ? _onWillPop : null,
        content: widget,
        title: '',
        backgroundColor: backgroundColor,
        radius: borderRadius);
  }

  //remove back action from dialog
  Future<bool> _onWillPop() async {
    return false;
  }

  //Show Bottom Sheet Dialog
  void onGetBottomSheet({
    required Widget widget,
    double elevation = 0,
    bool enableDrag = true,
    bool ignoreSafeArea = false,
    bool isDismissible = true,
  }) {
    Get.bottomSheet(
      widget,
      isDismissible: isDismissible,
      isScrollControlled: true,
      ignoreSafeArea: ignoreSafeArea,
      enableDrag: enableDrag,
      elevation: elevation,
    );
  }


  // Show Normal Dialog
  onNormalDialog({required EdgeInsets padding,required BuildContext context,required Widget child,bool back = true}){
    showDialog(context: context, barrierDismissible: back,builder: (BuildContext context) {
      var dialog = Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: padding,
        child: child,
      );
      return back ? dialog : WillPopScope(
        onWillPop: () async => false,
        child: dialog,
      );
    });
  }
}
