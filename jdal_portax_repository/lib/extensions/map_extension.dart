import 'package:cloud_firestore/cloud_firestore.dart';

extension MapExtensions on DocumentReference {
  Future<Map<String, dynamic>> withIdAsync() async {
    Map<String, dynamic> data = (await get()).data() as Map<String, dynamic>;
    data['id'] = id;
    return data;
  }
}

extension MapExtension on Map<String, dynamic> {
  Map<String, dynamic> mapDateTime() {
    for (var item in entries) {
      if (item.key.toLowerCase().contains('date')) {
        this[item.key] = Timestamp.fromDate(this[item.key]);
      }
    }
    return this;
  }

  Map<String, dynamic> mapTimestamp() {
    for (MapEntry<String, dynamic> item in entries) {
      if (item.value is Timestamp) {
        int seconds = this[item.key].seconds;
        int nanoseconds = this[item.key].nanoseconds;
        Timestamp timestamp = Timestamp(seconds, nanoseconds);
        this['dateTime'] = timestamp.toDate();
      }
    }
    return this;
  }
}
