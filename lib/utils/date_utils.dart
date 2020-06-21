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

  DateTime _getCurrentDate() {
    return DateTime.now();
  }

}