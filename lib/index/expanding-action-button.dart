import 'package:flutter/material.dart';
import 'dart:math' as Math;

class ExpandingActionButton extends StatelessWidget {
  final double maxDistance;
  final Animation<double> progress;
  final Widget child;

  static const double RIGHT_EDGE_PADDING = 4.0;
  static const double NINETY_DEGREES_IN_RADS = Math.pi / 2;

  ExpandingActionButton({
    Key? key,
    required this.maxDistance,
    required this.progress,
    required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: progress,
      builder: (BuildContext context, Widget? child) {
        final offset = Offset.fromDirection(
          // Move expansion buttons vertically 
          // using radian value of 90 degrees
          NINETY_DEGREES_IN_RADS,

          // Animated translation of expansion buttons 
          // their respective distances from center
          progress.value * maxDistance,
        );
        return Positioned(
        
          right: RIGHT_EDGE_PADDING + offset.dx,
          bottom: RIGHT_EDGE_PADDING + offset.dy,
          child: Transform.rotate(
            // Rotate child icons as they expand
            angle: (1.0 - progress.value) * NINETY_DEGREES_IN_RADS,
            child: child!,
          ),
        );
      },
      child: FadeTransition(
        opacity: progress,
        child: child,
      ),
    );
  }
}