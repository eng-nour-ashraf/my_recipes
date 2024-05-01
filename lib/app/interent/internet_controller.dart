import 'package:flutter/material.dart';
import 'package:get/get.dart' as gt;
import 'package:internet_connection_checker/internet_connection_checker.dart';
class InternetController extends gt.GetxController with WidgetsBindingObserver {
  gt.Rx<InternetConnectionStatus> connectionType = InternetConnectionStatus.connected.obs;
  final InternetConnectionChecker _connectivity = InternetConnectionChecker();

  @override
  void onInit() {
    WidgetsBinding.instance.addObserver(this);
    _connectivity.onStatusChange.listen((status) {
      switch (status) {
        case InternetConnectionStatus.connected:
          connectionType.value = InternetConnectionStatus.connected;
          break;
        case InternetConnectionStatus.disconnected:
          connectionType.value = InternetConnectionStatus.disconnected;
          break;
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {

    }
    super.didChangeAppLifecycleState(state);
  }
}
