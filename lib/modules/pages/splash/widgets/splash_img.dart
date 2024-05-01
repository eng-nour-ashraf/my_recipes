import 'package:flutter/material.dart';
import '../../../../app/const/assets.dart';
import '../../../../app/const/constants.dart';

class SplashImg extends StatelessWidget {
  const SplashImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.bg2,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      fit: BoxFit.fill,
    );
  }
}
