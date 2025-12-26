import 'package:intl/intl.dart';

/// Helpers para construir textos tipo "Hace X días y Y horas" a partir de
/// strings del socket/UI.
class DateHelper {
  /// Convierte `date` (formato `dd/MM/yyyy`) + `time` (formato `HH:mm`)
  /// a un texto relativo en español.
  ///
  /// Ej:
  /// - date: "28/11/2025", time: "09:10" -> "Hace 2 días y 3 horas"
  ///
  /// Si la fecha/hora es futura, devuelve "En X días y Y horas".
  /// Si pasó menos de 1 hora, devuelve "Hace menos de 1 hora".
  /// Si no puede parsear, devuelve ''.
  static String fromDateAndTime({
    required String date,
    required String time,
    DateTime? now,
  }) {
    try {
      final parsed = DateFormat(
        'dd/MM/yyyy HH:mm',
      ).parseStrict('${date.trim()} ${time.trim()}');

      final current = (now ?? DateTime.now()).toLocal();
      final diff = current.difference(parsed.toLocal());
      final isFuture = diff.isNegative;
      final abs = diff.abs();

      final days = abs.inDays;
      final hours = abs.inHours % 24;

      if (days == 0 && hours == 0) {
        return isFuture ? 'En menos de 1 hora' : 'Hace menos de 1 hora';
      }

      final parts = <String>[
        if (days > 0) _plural(days, 'día', 'días'),
        if (hours > 0) _plural(hours, 'hora', 'horas'),
      ];

      final text = parts.join(' y ');
      return isFuture ? 'En $text' : 'Hace $text';
    } catch (_) {
      return '';
    }
  }

  static String _plural(int value, String singular, String plural) {
    return value == 1 ? '1 $singular' : '$value $plural';
  }
}
