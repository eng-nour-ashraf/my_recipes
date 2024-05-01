import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/const/text_styles.dart';

class TextDialog extends StatelessWidget {
  final String title;
  final String icon;
  final Color titleColor;

  const TextDialog({
    Key? key, required this.title, required this.titleColor, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(icon,width: 120,height: 120,),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            title.tr,
            textAlign: TextAlign.center,
            style: AppTextStyles.onHeadingH4Style(color: titleColor,height: 2),
          ),
        ),

      ],
    );
  }
}
