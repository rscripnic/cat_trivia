import 'package:intl/intl.dart';

class TimeTools {
  static const String ymdhmPattern = "yyyy-MM-dd HH:mm";

  static DateTime? convertUtcToLocal(String utc) {
    try {
      return DateFormat(ymdhmPattern)
          .parse(DateTime.tryParse(utc)!.toLocal().toString());
    } catch (ex) {}
    return null;
  }

  static String? convertTimeToString(DateTime? dateTime, String pattern) {
    try {
      return DateFormat(pattern).format(dateTime!);
    } catch (ex) {}
    return null;
  }
}
