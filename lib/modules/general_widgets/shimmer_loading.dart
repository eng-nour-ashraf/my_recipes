import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../app/const/colors.dart';

class ShimmerLoadingWidget extends StatelessWidget {
  final double height;

  const ShimmerLoadingWidget(
      {super.key, required this.height,});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding:
        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemBuilder: (context, index) {
          return Container(
            height: height,
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 1.0),
                      blurRadius: 2,
                      color: AppColors.gray200Color)
                ],
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(15)),
          );
        },
      ),
    );
  }
}
