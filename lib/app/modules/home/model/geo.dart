import 'package:hive/hive.dart';
part 'geo.g.dart';

@HiveType(typeId: 3)
class GeoModel {
  @HiveField(0)
  late String lat;
  @HiveField(1)
  late String lng;

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
