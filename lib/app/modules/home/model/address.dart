import 'package:test_getx/app/modules/home/model/geo.dart';
import 'package:hive/hive.dart';

part 'address.g.dart';

@HiveType(typeId: 1)
class AddressModel {
  @HiveField(0)
  late String street;
  @HiveField(1)
  late String suite;
  @HiveField(2)
  late String city;
  @HiveField(3)
  late String zipcode;
  @HiveField(4)
  late GeoModel geo;

  AddressModel(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo});

  AddressModel.fromJson(Map<String, dynamic> json) {
    this.street = json['street'] ?? '';
    this.suite = json['suite'] ?? '';
    this.city = json['city'] ?? '';
    this.zipcode = json['zipcode'] ?? '';
    this.geo = GeoModel.fromJson(json['geo']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this.street;
    data['suite'] = this.suite;
    data['city'] = this.city;
    data['zipcode'] = this.zipcode;
    data['geo'] = this.geo.toJson();

    return data;
  }
}
