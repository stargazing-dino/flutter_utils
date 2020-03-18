bool isToday(DateTime date) {
  final today = DateTime.now();

  return isSameDay(date, today);
}

bool isSameDay(DateTime a, DateTime b) {
  return a.day == b.day && a.month == b.month && a.year == b.year;
}
