import 'package:hive/hive.dart';
import 'package:test_getx/app/modules/home/model/address.dart';
import 'package:test_getx/app/modules/home/model/company.dart';
// part 'userapicache.g.dart';

const String usersApiCache = 'users_api';

@HiveType(typeId: 0)
class UserApiBox extends HiveObject {
  late int id;
  late String name, username, email, phone, website;
  late AddressModel addressModel;
  late CompanyModel companyModel;
}
