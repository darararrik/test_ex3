import 'package:intl/intl.dart';

extension StringX on String {
  DateTime? toDateOrNull() {
    try {
      return DateFormat('dd.MM.yyyy').parse(this);
    } catch (_) {
      return null;
    }
  }
}
