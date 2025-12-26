import 'dart:convert';
import 'dart:developer';

void logPrettyJson(String title, dynamic object) {
  try {
    final formatted = const JsonEncoder.withIndent('  ').convert(object);
    log('$title:\n$formatted');
  } catch (e) {
    log('$title: (error formatting JSON) $e');
  }
}
