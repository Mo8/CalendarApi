

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

Genarate calendar with events

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
    flutter pub get
```

## Usage

```dart
var calendar = CalendarApi.getCalendar(2023, 1);
print(calendar);
CalendarApi.addEvent(calendar, Event("RDV", "Petite description", DateTime(2023, 1, 1, 10), DateTime(2023, 1, 1, 11)));
print(calendar);
```

## Additional information

install flutter : https://flutter.dev/docs/get-started/install
