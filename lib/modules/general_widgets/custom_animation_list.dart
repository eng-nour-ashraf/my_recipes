import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CustomAnimationList extends StatelessWidget {
  const CustomAnimationList(
      {super.key, required this.child,
      required this.index,
      this.vertical = true,
      this.distance = 100,
      this.scale = false, this.duration = 300});

  final Widget child;
  final int index;
  final bool vertical;
  final bool scale;
  final double distance;
  final int duration;

  @override
  Widget build(BuildContext context) => AnimationConfiguration.staggeredList(
        position: index,
        duration: Duration(milliseconds: duration),
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
