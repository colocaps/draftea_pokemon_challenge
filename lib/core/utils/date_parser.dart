import 'package:intl/intl.dart';

String parseDateToDMY(DateTime date) {
  final day = date.day;
  final mont = date.month;
  final year = date.year;
  final finalDate = '$day/$mont/$year';
  return finalDate;
}

String parseIsoDate(String isoDate) {
  final datetime = DateTime.parse(isoDate);
  final fomratteddate = DateFormat('dd-MM-yyyy').format(datetime);
  return fomratteddate;
}

bool isAdult(DateTime birthDate) {
  final now = DateTime.now();
  final date = DateTime(now.year - 18, now.month, now.day);
  return birthDate.isBefore(date);
}
