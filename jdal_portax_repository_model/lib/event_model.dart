import 'user_model.dart';

class Event {
  String eventId;
  String name;
  String description;
  DateTime startDate;
  DateTime endDate;
  User host;

  Event(this.eventId, this.name, this.description, this.startDate, this.endDate,
      this.host);
}
