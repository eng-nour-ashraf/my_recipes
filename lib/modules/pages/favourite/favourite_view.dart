import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/modules/pages/favourite/widgets/favourite_list.dart';
import 'favourite_controller.dart';

class FavouriteView extends GetView<FavouriteController> {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const FavouriteList();
  }
}
