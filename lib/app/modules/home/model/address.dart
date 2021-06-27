import 'package:test_getx/app/modules/home/model/geo.dart';

class AddressModel {
  late String street, suite, city, zipcode;
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
