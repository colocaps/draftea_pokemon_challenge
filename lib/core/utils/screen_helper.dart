import 'package:flutter/material.dart';

/// Helper para detectar el tipo de dispositivo y tamaño de pantalla
class ScreenHelper {
  /// Breakpoints estándar
  static const double mobileMaxWidth = 600;
  static const double tabletMaxWidth = 900;
  static const double desktopMinWidth = 901;

  /// Verifica si la pantalla es mobile (ancho < 600)
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < mobileMaxWidth;
  }

  /// Verifica si la pantalla es tablet (ancho entre 600 y 900)
  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= mobileMaxWidth && width < desktopMinWidth;
  }

  /// Verifica si la pantalla es desktop (ancho >= 901)
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= desktopMinWidth;
  }

  /// Verifica si es mobile o tablet (ancho < 901)
  static bool isMobileOrTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < desktopMinWidth;
  }

  /// Obtiene el ancho de la pantalla
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Obtiene el alto de la pantalla
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  /// Obtiene un valor diferente según el tipo de dispositivo
  static T responsive<T>({
    required BuildContext context,
    required T mobile,
    T? tablet,
    T? desktop,
  }) {
    if (isDesktop(context)) {
      return desktop ?? tablet ?? mobile;
    } else if (isTablet(context)) {
      return tablet ?? mobile;
    }
    return mobile;
  }

  /// Obtiene el tipo de dispositivo como enum
  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < mobileMaxWidth) {
      return DeviceType.mobile;
    } else if (width < desktopMinWidth) {
      return DeviceType.tablet;
    }
    return DeviceType.desktop;
  }
}

/// Enum para tipos de dispositivos
enum DeviceType { mobile, tablet, desktop }
