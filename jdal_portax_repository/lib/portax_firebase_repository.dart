import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jdal_portax_repository/extensions/map_extension.dart';
import 'package:jdal_portax_repository/interface/repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

class PortaxFirebaseRepository<TModel> extends Repository<TModel, TModel> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;

  PortaxFirebaseRepository(String collectionPath) {
    collectionReference = firestore.collection(collectionPath);
  }

  static init() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

  TModel mapToModel(Map<String, dynamic> source) {
    throw UnimplementedError();
  }

  Map<String, dynamic> mapToJson(TModel source) {
    throw UnimplementedError();
  }

  @override
  Future<List<TModel>> getAll() async {
    List<TModel> list = [];
    QuerySnapshot<Object?> query = await collectionReference.get();
    for (QueryDocumentSnapshot<Object?> item in query.docs) {
      TModel mapped = mapToModel(item.data() as Map<String, dynamic>);
      list.add(mapped);
    }
    return list;
  }

  @override
  Future<TModel> getByIdAsync(String id) async {
    DocumentSnapshot<Object?> docRef = await collectionReference.doc(id).get();
    Map<String, dynamic> data = docRef.data() as Map<String, dynamic>;
    return mapToModel(data);
  }

  @override
  Future<TModel> createAsync(TModel data) async {
    Map<String, dynamic> mapped = mapToJson(data);
    DocumentReference<Object?> docRef = await collectionReference.add(mapped);

    Map<String, dynamic> created = await docRef.withIdAsync();

    await updateAsync(created['id'], data);

    return mapToModel(created);
  }

  @override
  Future<void> deleteAsync(String id) async {
    await collectionReference.doc(id).delete();
  }

  @override
  Future<void> updateAsync(String id, TModel data) async {
    Map<String, dynamic> mapped = mapToJson(data);
    await collectionReference.doc(id).set(mapped);
  }
}
