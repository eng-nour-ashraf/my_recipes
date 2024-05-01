import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CustomAnimationGrid extends StatelessWidget {
  const CustomAnimationGrid(
      {super.key, required this.child,
      required this.index,
      this.vertical = true,
      this.distance = 100,
        required this.columnCount,
      this.scale = false, this.duration = 300});

  final Widget child;
  final int index;
  final int columnCount;
  final bool vertical;
  final bool scale;
  final double distance;
  final int duration;

  @override
  Widget build(BuildContext context) => AnimationConfiguration.staggeredGrid(
        position: index,
        duration: Duration(milliseconds: duration),
        columnCount: columnCount,
        child: Visibility(
          visible: scale,
          replacement: Visibility(
            visible: vertical,
            replacement: SlideAnimation(
              horizontalOffset: distance,
              child: FadeInAnimation(
                child: child,
              ),
            ),
            child: SlideAnimation(
              verticalOffset: distance,
              child: FadeInAnimation(
                child: child,
              ),
            ),
          ),
          child: ScaleAnimation(
            child: FadeInAnimation(
              child: child,
            ),
          ),
        ),
      );
}
