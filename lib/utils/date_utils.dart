import 'package:intl/intl.dart';

class DateUtils {

  DateUtils._privateConstructor();

  static final DateUtils instance = DateUtils._privateConstructor();

  String todayApiRequestDate() {
    final currentDate = _getCurrentDate();
    return "${currentDate.year}/${currentDate.month}/${currentDate.day}";
  }

  String yesterdayApiRequestDate() {
    final currentDate = _getCurrentDate();
    return "${currentDate.year}/${currentDate.month}/${currentDate.day - 1}";
  }

  String tomorrowApiRequestDate() {
    final currentDate = _getCurrentDate();
    return "${currentDate.year}/${currentDate.month}/${currentDate.day + 1}";
  }

  String currentDateInResponseFormat() {
    final currentDate = _getCurrentDate();
    final dateFormat = DateFormat("yyyy-MM-dd").format(currentDate);
    return dateFormat;
  }

  DateTime _getCurrentDate() {
    return DateTime.now();
  }

}