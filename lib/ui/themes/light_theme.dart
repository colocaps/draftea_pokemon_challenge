import 'package:draftea_pokemon_challenge/gen/fonts.gen.dart';
import 'package:draftea_pokemon_challenge/ui/colors/colors.dart';
import 'package:draftea_pokemon_challenge/ui/themes/font_sizes.dart';
import 'package:flutter/material.dart';

abstract class LightTheme {
  static const String _subtitleFontFamily = FontFamily.metropolis;
  static const String _titleFontFamily = FontFamily.volkhov;
  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      primaryColor: CustomColors.primary,
      primaryColorDark: const Color(0xff003c69),
      primaryColorLight: const Color(0xff11c2cd),
      disabledColor: const Color(0xff606166),
      highlightColor: Colors.black,
      scaffoldBackgroundColor: Colors.white,
      canvasColor: Colors.transparent,
      brightness: Brightness.light,
      textSelectionTheme: _lighTextSelectionData(),
      inputDecorationTheme: _lightInputDecorationTheme(),
      elevatedButtonTheme: _lightElevatedButtonTheme(),
      outlinedButtonTheme: _lightOutlineTextButtonTheme(),
      textTheme: _lightTextTheme(),
      textButtonTheme: _lightTextButtonTheme(),
      appBarTheme: _lightAppBarTheme(),
      bottomSheetTheme: _lighBottomSheetThemeData(),
      iconButtonTheme: _lightIconButtonTemeData(),
      bottomAppBarTheme: _lightBottomAppBarTheme(),
      bottomNavigationBarTheme: _lightBottomNavigationBarThemeData(),
      navigationBarTheme: _lightNavigationBarThemeData(),
      cardTheme: const CardThemeData(surfaceTintColor: Color(0xffF7FCF7)),
      dropdownMenuTheme: _lighDropdownMenuThemeData(),
      scrollbarTheme: const ScrollbarThemeData(
        thumbColor: WidgetStatePropertyAll(Color.fromARGB(255, 239, 3, 3)),
        trackColor: WidgetStatePropertyAll(Color.fromARGB(60, 234, 54, 54)),
        thickness: WidgetStatePropertyAll(4),
        radius: Radius.circular(8),
      ),
    );
  }

  static DropdownMenuThemeData _lighDropdownMenuThemeData() {
    return DropdownMenuThemeData(
      textStyle: const TextStyle(color: Colors.white),
      inputDecorationTheme: _lightInputDecorationTheme(),
      menuStyle: const MenuStyle(),
    );
  }

  static BottomSheetThemeData _lighBottomSheetThemeData() {
    return const BottomSheetThemeData(backgroundColor: Colors.transparent);
  }

  static NavigationBarThemeData _lightNavigationBarThemeData() {
    return NavigationBarThemeData(
      indicatorColor: Colors.lightGreen.shade200,
      labelTextStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      ),
    );
  }

  static BottomNavigationBarThemeData _lightBottomNavigationBarThemeData() {
    return const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff003c69),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: false,
    );
  }

  static BottomAppBarThemeData _lightBottomAppBarTheme() {
    return const BottomAppBarThemeData(color: Color(0xff003c69));
  }

  static AppBarTheme _lightAppBarTheme() {
    return const AppBarTheme(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
    );
  }

  static IconButtonThemeData _lightIconButtonTemeData() {
    return IconButtonThemeData(
      style: IconButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
    );
  }

  static TextButtonThemeData _lightTextButtonTheme() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: CustomColors.secondary,
        padding: const EdgeInsets.all(8),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Colors.transparent, width: 0),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          //   decoration: TextDecoration.underline,
        ),
        elevation: 0,
      ),
    );
  }

  static OutlinedButtonThemeData _lightOutlineTextButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.grey,
        fixedSize: const Size(328, 48),
        padding: const EdgeInsets.all(8),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: const BorderSide(color: CustomColors.primary, width: 2),
        elevation: 2,
      ),
    );
  }

  static TextSelectionThemeData _lighTextSelectionData() {
    return const TextSelectionThemeData(cursorColor: Colors.grey);
  }

  static ElevatedButtonThemeData _lightElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        fixedSize: const Size(328, 48),
        padding: const EdgeInsets.all(8),
        backgroundColor: CustomColors.primary,
        disabledBackgroundColor: CustomColors.primary.withAlpha(128),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.transparent, width: 0),
        ),
      ),
    );
  }

  static InputDecorationTheme _lightInputDecorationTheme() {
    return const InputDecorationTheme(
      labelStyle: TextStyle(color: CustomColors.primary),

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: CustomColors.primary, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        borderSide: BorderSide(color: Colors.redAccent),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        borderSide: BorderSide(color: Colors.redAccent, width: 2),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        borderSide: BorderSide(color: Colors.grey),
      ),
      // focusColor: CustomColors.primary,
      contentPadding: EdgeInsets.only(left: 15),
      fillColor: Colors.transparent,
      helperStyle: TextStyle(color: Colors.black45, fontSize: 10),
      hintStyle: TextStyle(color: CustomColors.primary, fontSize: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        borderSide: BorderSide(color: CustomColors.primary),
      ),
      iconColor: Colors.grey,
    );
  }

  static TextTheme _lightTextTheme() {
    final base = ThemeData.light().textTheme.apply(
      fontFamily: _subtitleFontFamily,
    );

    return base.copyWith(
      // TÍTULOS -> Volkhov
      displayLarge: base.displayMedium?.copyWith(
        fontSize: FontSizes.headline3FontSize,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontFamily: _titleFontFamily,
      ),
      displayMedium: base.displayMedium?.copyWith(
        fontSize: FontSizes.headline2FontSize,
        color: Colors.grey,
        fontWeight: FontWeight.w600,
        fontFamily: _titleFontFamily,
      ),
      titleLarge: base.displaySmall?.copyWith(
        fontSize: FontSizes.headline3FontSize + 2,
        color: Colors.grey,
        fontWeight: FontWeight.w700,
        fontFamily: _titleFontFamily,
      ),
      displaySmall: base.displaySmall?.copyWith(
        fontSize: FontSizes.headline3FontSize + 2,
        color: Colors.grey,
        fontWeight: FontWeight.w700,
        fontFamily: _titleFontFamily,
      ),
      // SUBTÍTULOS -> Metropolis
      titleSmall: base.titleSmall?.copyWith(
        fontSize: FontSizes.subtitle,
        color: Colors.grey,
        fontWeight: FontWeight.w600,
        fontFamily: _subtitleFontFamily,
      ),
      // TÍTULOS -> Volkhov
      headlineSmall: base.headlineSmall?.copyWith(
        fontSize: FontSizes.headline5FontSize,
        height: 1.3,
        color: Colors.grey,
        fontWeight: FontWeight.w400,
        fontFamily: _titleFontFamily,
      ),
      headlineLarge: base.headlineLarge?.copyWith(
        fontSize: FontSizes.headlineLarge,
        height: 1.3,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontFamily: _titleFontFamily,
      ),
      headlineMedium: base.headlineMedium?.copyWith(
        fontSize: FontSizes.headline1FontSize,
        color: Colors.white,
        fontWeight: FontWeight.normal,
        fontFamily: _titleFontFamily,
      ),
      bodySmall: base.bodySmall?.copyWith(
        color: Colors.grey,
        fontSize: FontSizes.captionFontSize,
        fontFamily: _subtitleFontFamily,
      ),
      labelLarge: base.labelLarge?.copyWith(
        color: Colors.white,
        fontSize: FontSizes.buttonFontSize,
        fontWeight: FontWeight.w600,
        fontFamily: _subtitleFontFamily,
      ),
      bodyMedium: base.bodySmall?.copyWith(
        color: Colors.grey,
        fontSize: FontSizes.buttonFontSize,
        fontFamily: _subtitleFontFamily,
      ),
    );
  }
}
