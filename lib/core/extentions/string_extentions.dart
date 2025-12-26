import 'package:intl/intl.dart';

extension StringExtension on String {
  String getCleanVersion() {
    final index = indexOf('.');
    if (index == -1) {
      return this;
    }
    return split('.').take(3).join('.');
  }

  String capitalize() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }

  String obscureText() {
    final length = this.length;

    final buffer = StringBuffer();
    for (var i = 0; i < length; i++) {
      buffer.write('-');
    }

    return buffer.toString();
  }
}

extension DateFormatExtension on String {
  String toFormattedDate() {
    final parsedDate = DateFormat('dd/MM/yyyy').parse(this);

    final formattedDate = DateFormat('dd MMMM, yyyy', 'es').format(parsedDate);

    return formattedDate;
  }
}
