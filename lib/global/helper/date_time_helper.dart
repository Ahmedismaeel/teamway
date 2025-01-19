import 'package:intl/intl.dart';

extension ToString on DateTime? {
  toDate() {
    return this == null ? "No Date" : DateFormat("yyyy-MM-dd").format(this!);
  }

  toDateApi() {
    return this == null ? null : DateFormat("yyyy-MM-dd").format(this!);
  }

  toDateTime() {
    return this == null
        ? "No Date"
        : DateFormat("yyyy-MM-dd hh:mm:ss").format(this!);
  }
}

extension StringToDate on String {
  DateTime toDate() {
    return DateTime.parse(this);
  }
}
