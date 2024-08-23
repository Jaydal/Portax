import 'user_model.dart';

class Event {
  String id;
  String name;
  String description;
  DateTime startDate;
  DateTime endDate;
  User host;

  Event(this.id, this.name, this.description, this.startDate, this.endDate,
      this.host);
}
