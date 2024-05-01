import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipes/modules/pages/details/widgets/details_appbar.dart';
import 'package:my_recipes/modules/pages/details/widgets/details_info.dart';
import 'details_controller.dart';

class DetailsView extends GetView<DetailsController> {
  const DetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          DetailsAppBar(controller: controller,),
          DetailsInfo(),
        ],
      ),
    );
  }
}
