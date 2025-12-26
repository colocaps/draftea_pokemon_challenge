import 'package:flutter/material.dart';

abstract class ThemeHelper {
  static bool isDarkThemeOn(BuildContext context) {
    final theme = Theme.of(context);
    if (theme.brightness == Brightness.dark) {
      return true;
    } else {
      return false;
    }
  }
}
