
import 'package:calendar_api/src/model/event.dart';

class Calendar{
  List<DateTime> days;
  List<Event> events;

  Calendar(List<DateTime> days,[events]): days = days..sort((a, b) => a.compareTo(b)), events = events ?? [];

  @override
  String toString() {
    return 'Calendar{days: $days, events: $events}';
  }
}