import 'event_model.dart';

class User {
  String userId;
  String email;
  String nickName;
  List<Event> events;

  User(this.userId, this.email, this.nickName, this.events);
}
