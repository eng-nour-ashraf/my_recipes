import 'package:flutter/material.dart';
import '../../../../app/const/assets.dart';
import '../../../../app/const/constants.dart';

class LoginImg extends StatelessWidget {
  const LoginImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      child: Image.asset(
        AppAssets.logo,
        width: 150,
        height: 150,
      ),
    );
  }
}
