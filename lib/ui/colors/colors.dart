import 'package:flutter/material.dart';

abstract class CustomColors {
  /// Color principal
  /// PANTONE P 7742 C
  /// RGB 72 | 129 | 55
  /// HEX #488137
  static const Color primary = Color(0xFF488137);

  /// Colores secundarios (verdes)
  /// PANTONE P 361 C (al 95%) - HEX #46B346
  static const Color secondary = Color(0xFF46B346);

  /// PANTONE P 368 C - HEX #77B951
  static const Color secondary2 = Color(0xFF77B951);

  /// PANTONE P 376 (al 80%) - HEX #9BC555
  static const Color secondary3 = Color(0xFF9BC555);

  /// Neutros (negros / grises)
  /// PANTONE P BLACK C - HEX #000000
  static const Color black = Color(0xFF000000);

  /// PANTONE P BLACK C (al 80%) - HEX #333333
  static const Color black80 = Color(0xFF333333);

  /// PANTONE P BLACK C (al 60%) - HEX #666666
  static const Color black60 = Color(0xFF666666);

  /// PANTONE P 52-7 U (al 93%) - HEX #999999
  static const Color gray40 = Color(0xFF999999);

  /// Legacy aliases (para no romper usos existentes)
  static const Color tertiary = black80;
  static const Color quaternary = black60;
  static const Color kGrayColor = gray40;
}
