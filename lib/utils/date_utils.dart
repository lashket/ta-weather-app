import 'package:intl/intl.dart';

class DateUtils {

  DateUtils._privateConstructor();

  static const String REQUEST_DATE_PATTERN = "yyyy/MM/dd";
  static const String RESPONSE_DATE_PATTERN = "yyyy-MM-dd";

  static final DateUtils instance = DateUtils._privateConstructor();

  String todayApiRequestDate() {
    return DateFormat(REQUEST_DATE_PATTERN).format(_getCurrentDate());
  }

  String yesterdayApiRequestDate() {
    final yesterdayDate = DateTime(_getCurrentDate().year, _getCurrentDate().month, _getCurrentDate().day - 1);
    return DateFormat(REQUEST_DATE_PATTERN).format(yesterdayDate);
  }

  String tomorrowApiRequestDate() {
    final tomorrowDate = _getCurrentDate().add(Duration(days: 1));
    return DateFormat(REQUEST_DATE_PATTERN).format(tomorrowDate);
  }

  String currentDateInResponseFormat() {
    return DateFormat(RESPONSE_DATE_PATTERN).format(_getCurrentDate());
  }

  DateTime _getCurrentDate() {
    return DateTime.now();
  }

}