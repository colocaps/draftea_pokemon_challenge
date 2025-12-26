import 'package:intl/intl.dart';

int parseInt(String str) {
  var cleanedStr = str.replaceAll('.', '');
  cleanedStr = cleanedStr.replaceAll(RegExp('[^0-9,]'), '');
  cleanedStr = cleanedStr.replaceAll(',', '.');
  final doubleValue = double.parse(cleanedStr);
  return doubleValue.toInt();
}

String formatNumber(int number) {
  final formatter = NumberFormat('#,###', 'es_ES');
  return formatter.format(number);
}

String formatNumNumber(num number) {
  final formatter = NumberFormat('#,###', 'es_ES');
  return formatter.format(number);
}

int removeDotsOfString(String value) {
  final number = int.parse(value.replaceAll('.', ''));
  return number;
}

String putDotsToNumberString(int number) {
  final numberFormatter = NumberFormat.decimalPattern(
    'es_ES',
  ); // US format with commas

  final numberWithDots = numberFormatter.format(number);
  return numberWithDots;
}

String padLeft(int index) {
  String formattedIndex;

  if (index < 10) {
    formattedIndex = index.toString().padLeft(2, '0');
  } else {
    formattedIndex = index.toString();
  }
  return formattedIndex;
}
