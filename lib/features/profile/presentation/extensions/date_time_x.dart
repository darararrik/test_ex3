import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String toApiDateString() => DateFormat('yyyy-MM-dd').format(this);
}
