

## Features

- Generate calendar from year and month
- Add event to calendar

## Getting started

Add this to your package's pubspec.yaml file in dependencies:

```yaml 
    calendar_api:
        git:
            url: https://github.com/Mo8/CalendarApi.git
            ref: main
```

And then run:

```bash 
    dart pub get
```

## Usage

```dart
import 'package:calendar_api/calendar_api.dart';
import 'package:calendar_api/src/model/event.dart';

void main() {
  var calendar = CalendarApi.getCalendar(2023, 1);
  print(calendar);
  CalendarApi.addEvent(calendar, Event("RDV", "Petite description", DateTime(2023, 1, 1, 10), DateTime(2023, 1, 1, 11)));
  print(calendar);
}
```
