import 'package:flutter/material.dart';

class DismissibleCardAnimationModel {
  final double rotationAnimation;

  final Animation<RelativeRect> positionedAnimation;

  final Animation<double> scaleAnimation;

  final bool restore;

  DismissibleCardAnimationModel({
    this.restore = false,
    required this.rotationAnimation,
    required this.positionedAnimation,
    required this.scaleAnimation,
  });
}
