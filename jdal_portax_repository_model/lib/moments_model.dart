import 'metadata_model.dart';
import 'user_model.dart';

class MomentsModel {
  String momentId;
  String eventId;
  User momentMadeBy;
  Metadata metadata;

  MomentsModel(this.momentId, this.eventId, this.momentMadeBy, this.metadata);
}
