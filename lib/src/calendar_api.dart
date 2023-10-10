import 'package:calendar_api/src/model/calendar.dart';
import 'package:calendar_api/src/model/event.dart';
class CalendarApi{

  ///
  /// Get a calendar for a specific year and month
  ///
  /// [month] must be between 1 and 12
  ///
  /// CalendarApi.getCalendar(2023, 1);
  ///
  static Calendar getCalendar(int year,int month){
    if(month < 1 || month > 12) throw Exception("Month must be between 1 and 12");

    List<DateTime> days = [DateTime(year,month,1)];
    while(days.last.month == month){
      days.add(DateTime(year,month,days.length + 1));
    }
    days.removeLast();
    return Calendar(days);
  }

  ///
  /// Add an event to a calendar
  ///
  /// [event] must be between the first and the last day of the calendar
  ///
  /// CalendarApi.addEvent(calendar, Event("RDV", "Petite description", DateTime(2023, 1, 1, 10), DateTime(2023, 1, 1, 11)));
  ///
  static void addEvent(Calendar calendar, Event event){
    if(event.start.isBefore(calendar.days.first) || event.end.isAfter(calendar.days.last)) {
      throw Exception("Event is out of range");
    }
    calendar.events.add(event);
  }

}
