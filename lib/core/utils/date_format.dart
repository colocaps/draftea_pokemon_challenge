class DateUtilsHelper {
  static String getRemainingDaysText(String rawDate) {
    try {
      final end = DateTime.parse(rawDate).toLocal();
      final today = DateTime.now();

      final diff = end
          .difference(DateTime(today.year, today.month, today.day))
          .inDays;

      if (diff > 1) return '$diff días';
      if (diff == 1) return '1 día';
      if (diff == 0) return '0 días';

      return 'Finalizado';
    } catch (_) {
      return '';
    }
  }
}
