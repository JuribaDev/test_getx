class GeoModel {
  late double lat, lng;

  GeoModel({required this.lat, required this.lng});

  GeoModel.fromJson(Map<String, dynamic> json) {
    this.lat = json['lat'] ?? '';
    this.lng = json['lng'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    return data;
  }
}
