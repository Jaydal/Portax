import 'package:jdal_portax_repository/extensions/map_extension.dart';
import 'package:jdal_portax_repository/portax_firebase_repository.dart';
import 'package:jdal_portax_repository_model/metadata_model.dart';

class MetadataRepository extends PortaxFirebaseRepository<Metadata> {
  MetadataRepository() : super((Metadata).toString().toLowerCase());

  @override
  Metadata mapToModel(Map<String, dynamic> source) {
    source.mapTimestamp();
    return Metadata.fromJson(source);
  }

  @override
  Map<String, dynamic> mapToJson(Metadata source) {
    Map<String, dynamic> mapped = source.toJson();
    mapped.mapDateTime();
    return mapped;
  }
}
