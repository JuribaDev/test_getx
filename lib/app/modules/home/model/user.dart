import 'package:test_getx/app/modules/home/model/address.dart';
import 'package:test_getx/app/modules/home/model/company.dart';
import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
class UserModel {
  @HiveField(0)
  late int id;
  @HiveField(1)
  late String name;
  @HiveField(2)
  late String username;
  @HiveField(3)
  late String email;
  @HiveField(4)
  late String phone;
  @HiveField(5)
  late String website;
  @HiveField(6)
  late AddressModel addressModel;
  @HiveField(7)
  late CompanyModel companyModel;

  UserModel(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.phone,
      required this.website,
      required this.addressModel,
      required this.companyModel});

  UserModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'] ?? 0;
    this.name = json['name'] ?? '';
    this.username = json['username'] ?? '';
    this.email = json['email'] ?? '';
    this.phone = json['phone'] ?? '';
    this.website = json['website'] ?? '';
    this.addressModel = AddressModel.fromJson(json['address']);
    this.companyModel = CompanyModel.fromJson(json['company']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['username'] = this.username;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['website'] = this.website;
    data['address'] = addressModel.toJson();
    data['company'] = companyModel.toJson();
    return data;
  }
}
