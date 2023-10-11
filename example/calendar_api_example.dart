import 'package:calendar_api/calendar_api.dart';

void main() {
  var calendar = CalendarApi.getCalendar(2023, 1);
  print(calendar);
  CalendarApi.addEvent(calendar, Event("RDV", "Petite description", DateTime(2023, 1, 1, 10), DateTime(2023, 1, 1, 11)));
  print(calendar);
}
