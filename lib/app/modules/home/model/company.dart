import 'package:hive/hive.dart';

part 'company.g.dart';

@HiveType(typeId: 2)
class CompanyModel {
  @HiveField(0)
  late String name;
  @HiveField(1)
  late String catchPharase;
  @HiveField(2)
  late String bs;

  CompanyModel(
      {required this.name, required this.catchPharase, required this.bs});

  CompanyModel.fromJson(Map<String, dynamic> json) {
    this.name = json['name'] ?? '';
    this.catchPharase = json['catchPharase'] ?? '';
    this.bs = json['bs'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['catchPharase'] = this.catchPharase;
    data['bs'] = this.bs;
    return data;
  }
}
