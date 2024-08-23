import 'package:jdal_portax_repository/extensions/map_extension.dart';
import 'package:jdal_portax_repository/portax_firebase_repository.dart';
import 'package:jdal_portax_repository_model/metadata_model.dart';

class MetadataRepository extends PortaxFirebaseRepository {
  MetadataRepository() : super("metadata");

  Future<Metadata> getAsync(String id) async {
    return (await super.getByIdAsync(id));
  }

  Future<Metadata> addAsync(Metadata metadata) async {
    return await super.createAsync(metadata.toJson());
  }

  @override
  Metadata mapToModel(Map<String, dynamic> source) {
    source.mapTimestamp();
    return Metadata.fromJson(source);
  }

  @override
  Map<String, dynamic> mapToJson(source) {
    Map<String, dynamic> mapped = (source as Metadata).toJson();
    mapped.mapDateTime();
    return mapped;
  }
}
