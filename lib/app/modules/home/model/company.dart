class CompanyModel {
  late String name, catchPharase, bs;

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
