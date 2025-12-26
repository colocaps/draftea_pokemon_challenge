import 'package:intl/intl.dart';

extension StringExt on String {
  String obscureText() {
    final length = this.length;

    final buffer = StringBuffer();
    for (var i = 0; i < length; i++) {
      buffer.write('-');
    }

    return buffer.toString();
  }
}

extension StringExtension on String {
  String getCleanVersion() {
    final index = indexOf('.');
    if (index == -1) {
      return this;
    }
    return split('.').take(3).join('.');
  }
}

extension CurrencyFormatting on int {
  String toCurrency() {
    if (this >= 0) {
      return '\$$this';
    } else {
      return '-\$${abs()}';
    }
  }
}

extension DateFormatExtension on String {
  String toFormattedDate() {
    final parsedDate = DateFormat('dd/MM/yyyy').parse(this);

    final formattedDate = DateFormat('dd MMMM, yyyy', 'es').format(parsedDate);

    return formattedDate;
  }
}
