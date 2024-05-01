import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main_controller.dart';
import 'widgets/main_list.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainList();
  }
}
