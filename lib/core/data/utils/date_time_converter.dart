import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) {
    try {
      // Если строка содержит только YYYY-MM-DD — не вызываем toUtc()
      final dateOnlyRegex = RegExp(r'^\d{4}-\d{2}-\d{2}$');
      if (dateOnlyRegex.hasMatch(json)) {
        return DateFormat('yyyy-MM-dd').parse(json);
      }

      // Иначе пытаемся парсить ISO с временем и таймзоной
      return DateTime.parse(json).toUtc();
    } catch (_) {
      try {
        // Попытка распарсить только дату YYYY-MM-DD
        return DateFormat('yyyy-MM-dd').parse(json);
      } catch (_) {
        // fallback: если совсем не удалось
        return DateTime.fromMillisecondsSinceEpoch(0);
      }
    }
  }

  @override
  String toJson(DateTime object) {
    // тут реши, какой формат тебе нужен в JSON:
    // ISO8601:
    return object.toUtc().toIso8601String();
    // или локальный формат:
    // return DateFormat('dd.MM.yyyy HH:mm').format(object);
  }
}
