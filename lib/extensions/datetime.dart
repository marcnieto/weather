extension WeatherTimeExtension on DateTime {
  String toHourlyFormat() {
    return '${hour % 12 == 0 ? 12 : hour % 12}${hour < 12 ? 'AM' : 'PM'}';
  }

  String toDailyFormat() {
    final today = DateTime.now();

    if (year == today.year && month == today.month && day == today.day) {
      return 'Today';
    }

    switch (weekday) {
      case 1:
        return 'Mon';
      case 2:
        return 'Tues';
      case 3:
        return 'Wed';
      case 4:
        return 'Thurs';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      case 7:
        return 'Sun';
    }

    return '$month-$day';
  }
}
