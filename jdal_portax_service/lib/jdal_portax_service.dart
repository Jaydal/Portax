library jdal_portax_service;

import 'package:jdal_portax_repository/portax_firebase_repository.dart';
import 'package:jdal_portax_repository_model/metadata_model.dart';

class FirebaseService {
  static init() async {
    await PortaxFirebaseRepository.init();
  }
}
