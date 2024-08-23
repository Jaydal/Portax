import 'package:jdal_portax_repository/portax_firebase_repository.dart';
import 'package:jdal_portax_repository_model/moments_model.dart';

class MomentsRepository extends PortaxFirebaseRepository<Moments> {
  MomentsRepository() : super((Moments).toString().toLowerCase());

  @override
  Map<String, dynamic> mapToJson(source) {
    // TODO: implement mapToJson
    throw UnimplementedError();
  }

  @override
  mapToModel(Map<String, dynamic> source) {
    // TODO: implement mapToModel
    throw UnimplementedError();
  }
}
