class Event {
  String title;
  String description;
  DateTime start;
  DateTime end;
  Event(this.title, this.description, this.start, this.end);

  @override
  String toString() {
    return 'Event{title: $title, description: $description, start: $start, end: $end}';
  }
}