import 'package:astra_admin_app/infrastructure/core/helpers/server_address.dart';

class AdminEndpoints {
  static _AuthEndpoints get auth => _AuthEndpoints();
  static _RegionsEndpoints get regions => _RegionsEndpoints();
  static _ProfileEndpoints get user => _ProfileEndpoints();
}


final String _address = AdminServerAddress().relevant;

class _AuthEndpoints {
  String get checkPhone => _address + 'curator/auth/phone/check/';
  String get login => _address + 'curator/auth/login/';
  String get passwordReset => _address + 'curator/auth/reset/create/';
  String get checkSmsCode => _address + 'curator/auth/reset/validate/';
  String get resetCode => _address + 'curator/auth/reset/code/';
}

class _ProfileEndpoints {
  String get createUser => _address + 'curator/profiles/create/';
  String get getprofiles => _address + 'curator/profiles/';
  String  profilesFromLastName(String order) =>
      _address + 'curator/profiles/by/lastname/$order/';
  String profilesFromDrafts(String order) =>
      _address + 'curator/profiles/by/draft/$order/';
  String profileDetails(int id) => _address + 'curator/profiles/$id/';
  String uploadPhoto(int id) => _address + 'curator/profiles/add/photo/$id/';
  String updatePhoto(int id) => _address + 'curator/profiles/update/photo/$id/';
  String deletePhoto(int id) => _address + 'curator/profiles/delete/photo/$id/';
  String updateProfile(int id) => _address + 'curator/profiles/update/$id/';
  String changePhone(int id) =>
      _address + 'curator/profiles/update/phone/$id/';
  String get newPhone =>
      _address + '/curator/profiles/update/phone/confirm/';
  String activateAccount(int id) => _address + 'curator/profiles/activate/$id/';
  String deleteAccount(int id) => _address + 'curator/profiles/delete/$id/';
  String get genders => _address + 'curator/genders/';
  String get statuses => _address + 'curator/statuses/';


}

class _RegionsEndpoints {
  String get countries => _address + 'curator/regions/country/';
  String get cities => _address + 'curator/regions/city/';
}


