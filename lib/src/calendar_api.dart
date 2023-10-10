import 'package:calendar_api/src/model/calendar.dart';
import 'package:calendar_api/src/model/event.dart';
class CalendarApi{
  static Calendar getCalendar(int year,int month){
    if(month < 1 || month > 12) throw Exception("Month must be between 1 and 12");

    DateTime dateStart = DateTime(year, month);
    DateTime dateEnd = DateTime(year, month + 1);


    return Calendar(List.generate(dateEnd.difference(dateStart).inDays, (index) => dateStart.add(Duration(days: index))));
  }

  static void addEvent(Calendar calendar, Event event){
    if(event.start.isBefore(calendar.days.first) || event.end.isAfter(calendar.days.last)) {
      throw Exception("Event is out of range");
    }
    calendar.events.add(event);
  }

}
