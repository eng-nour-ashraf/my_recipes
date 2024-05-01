import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/modules/pages/home/widgets/home_appbar.dart';
import 'home_controller.dart';
import 'widgets/home_bottombar.dart';
import 'widgets/home_pageview.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const HomeBottomBar(),
      body: Column(
        children: [
          const HomeAppBar(),
          HomePageView(controller: controller,),
        ],
      ),
    );
  }
}
