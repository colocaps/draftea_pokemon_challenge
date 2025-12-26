import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

void openWhatsApp(String phone) {
  final cleanedPhone = phone.replaceAll('+', '');

  final url = Uri.parse(
    kIsWeb
        ? 'https://api.whatsapp.com/send?phone=$cleanedPhone'
        : (Platform.isAndroid || Platform.isIOS
              ? 'https://wa.me/$cleanedPhone'
              : 'https://api.whatsapp.com/send?phone=$cleanedPhone'),
  );

  launchUrl(url);
}
