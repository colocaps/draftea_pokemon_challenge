import 'package:draftea_pokemon_challenge/ui/shimmer/base_shimmer.dart';
import 'package:flutter/material.dart';

extension WidgetExt on Widget {
  Widget enabled({required bool isEnabled}) {
    return isEnabled
        ? Opacity(opacity: 1, child: this)
        : Opacity(opacity: 0.50, child: this);
  }

  Widget horizontalGap(double value) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: value),
      child: this,
    );
  }

  Widget verticalGap(double value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: value),
      child: this,
    );
  }

  Widget shimmer({required bool isLoading, double radius = 30}) {
    return BaseShimmer(isLoading: isLoading, radius: radius, child: this);
  }

  Widget alignemnt(AlignmentGeometry alignmentGeometry) {
    return Align(alignment: alignmentGeometry, child: this);
  }

  Widget shaderMask() {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          colors: <Color>[Colors.transparent, Colors.black],
        ).createShader(bounds);
      },
      blendMode: BlendMode.dstOut,
      child: this,
    );
  }
}
