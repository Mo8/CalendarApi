class InvalidMonthCalendarException implements Exception {
  final String message;

  InvalidMonthCalendarException(this.message);

  @override
  String toString() {
    return message;
  }
}
