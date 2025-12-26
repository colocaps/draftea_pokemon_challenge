// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

abstract class ParseColor {
  static Color parseColor(String color) {
    var hex = color.replaceAll('#', '');
    if (hex.isEmpty) hex = 'ffffff';
    if (hex.length == 3) {
      hex =
          '${hex.substring(0, 1)}${hex.substring(0, 1)}${hex.substring(1, 2)}${hex.substring(1, 2)}${hex.substring(2, 3)}${hex.substring(2, 3)}';
    }
    final col = Color(int.parse(hex, radix: 16));
    return col;
  }
}
