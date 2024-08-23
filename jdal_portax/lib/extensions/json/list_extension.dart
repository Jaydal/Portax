extension ListExtension on List<Map<String, dynamic>> {
  List<Map<String, dynamic>> stringifyDates() {
    for (var object in this) {
      for (var item in object.entries) {
        if (item.value is DateTime) {
          object[item.key] = (item.value as DateTime).toIso8601String();
        }
      }
    }
    return this;
  }
}
