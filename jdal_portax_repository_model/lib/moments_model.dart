import 'metadata_model.dart';
import 'user_model.dart';

class Moments {
  String id;
  String eventId;
  User momentMadeBy;
  Metadata metadata;

  Moments(this.id, this.eventId, this.momentMadeBy, this.metadata);
}
