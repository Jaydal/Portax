import 'event_model.dart';

class User {
  String id;
  String email;
  String nickName;
  List<Event> events;

  User(this.id, this.email, this.nickName, this.events);
}
