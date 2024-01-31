import 'package:intl/intl.dart';

extension DateTimeEx on DateTime {
  String get toPublishDateFormat {
    return DateFormat('dd MMM y', 'de_DE').format(this).replaceAll('.', '');
  }
}
