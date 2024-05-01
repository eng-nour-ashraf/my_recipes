import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/app/const/colors.dart';
import '../../../../app/const/getX_Ids.dart';
import '../home_controller.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        id: GetXIds.homeBottomBar,
        builder: (HomeController controller) {
          return CupertinoTabBar(
            backgroundColor: AppColors.gold3Color,
            onTap: controller.onBottomNavBarTap,
            currentIndex: controller.currentIndex,
            items: [
              _buildBottomNavigationBarItem(
                  index: 0,
                  currentIndex: controller.currentIndex,
                  icon: Icons.home),
              _buildBottomNavigationBarItem(
                  index: 1,
                  currentIndex: controller.currentIndex,
                  icon: Icons.favorite),
              _buildBottomNavigationBarItem(
                  index: 2,
                  currentIndex: controller.currentIndex,
                  icon: Icons.person),
            ],
          );
        });
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      {required IconData icon, required int currentIndex, required int index}) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: currentIndex == index ? Colors.black : AppColors.gold2Color,
      ),
    );
  }
}
