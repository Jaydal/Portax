class Metadata {
  String id;
  String type;
  double size;
  DateTime dateTime;
  String location;
  String resolution;

  Metadata(this.id, this.type, this.size, this.dateTime, this.location,
      this.resolution);
  Metadata.create(
      this.type, this.size, this.dateTime, this.location, this.resolution)
      : id = "";

  factory Metadata.fromJson(Map<String, dynamic> json) {
    return Metadata(json["id"], json["type"], json["size"] ?? 0,
        json["dateTime"], json["location"], json["resolution"]);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'size': size,
      'dateTime': dateTime,
      'location': location,
      'resolution': resolution
    };
  }
}
