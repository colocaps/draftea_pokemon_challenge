import 'package:flutter/material.dart';
import 'package:draftea_pokemon_challenge/gen/fonts.gen.dart';
import 'package:draftea_pokemon_challenge/ui/colors/colors.dart';
import 'package:draftea_pokemon_challenge/ui/themes/font_sizes.dart';

abstract class DarkTheme {
  static const String _subtitleFontFamily = FontFamily.metropolis;
  static const String _titleFontFamily = FontFamily.volkhov;
  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      primaryColor: Colors.transparent,
      primaryColorDark: const Color(0xff003c69),
      primaryColorLight: CustomColors.primary,
      disabledColor: const Color(0xff606166),
      highlightColor: const Color(0xffdce0fa),
      scaffoldBackgroundColor: const Color(0xff181818),
      canvasColor: Colors.transparent,
      brightness: Brightness.dark,
      textSelectionTheme: _darkTextSelectionThemeData(),
      inputDecorationTheme: _darkInputDecorationTheme(),
      elevatedButtonTheme: _darkElevatedButtonTheme(),
      textTheme: _darkTextTheme(),
      textButtonTheme: _darkTextButtonTheme(),
      outlinedButtonTheme: _outlineDarkTextButtonTheme(),
      appBarTheme: _darkAppBarTheme(),
      iconButtonTheme: _darkIconButtonTemeData(),
      bottomAppBarTheme: _darkBottomAppBarTheme(),
      bottomNavigationBarTheme: _darkBottomNavigationBarThemeData(),
      navigationBarTheme: _darkNavigationBarThemeData(),
    );
  }

  static NavigationBarThemeData _darkNavigationBarThemeData() {
    return NavigationBarThemeData(
      indicatorColor: Colors.white,
      labelTextStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      ),
    );
  }

  static BottomNavigationBarThemeData _darkBottomNavigationBarThemeData() {
    return const BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: false,
    );
  }

  static BottomAppBarThemeData _darkBottomAppBarTheme() {
    return const BottomAppBarThemeData(color: Colors.grey);
  }

  static AppBarTheme _darkAppBarTheme() {
    return const AppBarTheme(centerTitle: true, backgroundColor: Colors.grey);
  }

  static IconButtonThemeData _darkIconButtonTemeData() {
    return IconButtonThemeData(
      style: IconButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
    );
  }

  static TextButtonThemeData _darkTextButtonTheme() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: CustomColors.primary,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: const BorderSide(color: Colors.transparent, width: 0),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          //  decoration: TextDecoration.underline,
        ),
        elevation: 0,
      ),
    );
  }

  static OutlinedButtonThemeData _outlineDarkTextButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: CustomColors.primary,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: CustomColors.primary, width: 2),
        ),
        elevation: 2,
      ),
    );
  }

  static ElevatedButtonThemeData _darkElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        backgroundColor: CustomColors.primary,
        disabledBackgroundColor: CustomColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Colors.transparent, width: 0),
        ),
      ),
    );
  }

  static InputDecorationTheme _darkInputDecorationTheme() {
    return const InputDecorationTheme(
      filled: true,
      labelStyle: TextStyle(color: Colors.white),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: CustomColors.primary, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(color: Colors.redAccent),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(color: Colors.redAccent, width: 2),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(color: Colors.blue),
      ),
      focusColor: CustomColors.primary,
      contentPadding: EdgeInsets.symmetric(horizontal: 15),
      fillColor: Colors.transparent,
      helperStyle: TextStyle(color: Colors.black45, fontSize: 10),
      hintStyle: TextStyle(color: Colors.white, fontSize: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.blue),
      ),
      iconColor: Colors.white,
    );
  }

  static TextSelectionThemeData _darkTextSelectionThemeData() {
    return const TextSelectionThemeData(
      selectionHandleColor: CustomColors.primary,
      selectionColor: CustomColors.primary,
      cursorColor: CustomColors.primary,
    );
  }

  static TextTheme _darkTextTheme() {
    final base = ThemeData.dark().textTheme.apply(
      fontFamily: _subtitleFontFamily,
    );

    return base.copyWith(
      bodyLarge: base.displayMedium?.copyWith(
        fontSize: FontSizes.captionFontSize,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.05,
      ),
      titleMedium: base.displayMedium?.copyWith(
        fontSize: FontSizes.subtitle,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.05,
      ),
      // TÍTULOS -> Volkhov
      displayLarge: base.displayMedium?.copyWith(
        fontSize: FontSizes.headline3FontSize,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.05,
        fontFamily: _titleFontFamily,
      ),
      displayMedium: base.displayMedium?.copyWith(
        fontSize: FontSizes.headline2FontSize,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.05,
        fontFamily: _titleFontFamily,
      ),
      titleLarge: base.displaySmall?.copyWith(
        fontSize: FontSizes.headline3FontSize + 4,
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontFamily: _titleFontFamily,
      ),
      displaySmall: base.displaySmall?.copyWith(
        fontSize: FontSizes.headline3FontSize + 2,
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontFamily: _titleFontFamily,
      ),
      // SUBTÍTULOS -> Metropolis
      titleSmall: base.titleSmall?.copyWith(
        fontSize: FontSizes.subtitle2FontSize,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.05,
      ),
      // TÍTULOS -> Volkhov
      headlineSmall: base.headlineSmall?.copyWith(
        fontSize: FontSizes.headline5FontSize,
        height: 1.3,
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontFamily: _titleFontFamily,
      ),
      bodySmall: base.bodySmall?.copyWith(
        color: Colors.white,
        fontSize: FontSizes.captionFontSize,
      ),
      labelLarge: base.labelLarge?.copyWith(color: Colors.white, fontSize: 16),
      bodyMedium: base.bodySmall?.copyWith(
        color: Colors.white,
        fontSize: FontSizes.buttonFontSize,
      ),
    );
  }
}
