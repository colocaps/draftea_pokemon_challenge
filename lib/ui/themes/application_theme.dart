import 'package:draftea_pokemon_challenge/ui/themes/dark_theme.dart';
import 'package:draftea_pokemon_challenge/ui/themes/light_theme.dart';
import 'package:flutter/material.dart';

abstract class ApplicationTheme {
  static final ThemeData light = LightTheme.lightTheme();

  static final ThemeData dark = DarkTheme.darkTheme();
}
