import 'package:astra_admin_app/infrastructure/admin_astra/profile/entities/profile.dart';
import 'package:astra_admin_app/infrastructure/core/helpers/endpoint/admin_endpoints.dart';
import 'package:dio/dio.dart';

class ProfileApi {
  final _dio = Dio();

  Future createUser(String token, Profile profile) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      var body = profile.toMap();
      res = await _dio.post(AdminEndpoints.user.createUser, data: body);
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }

  Future getprofiles(String token) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      res = await _dio.get(
        AdminEndpoints.user.getprofiles,
      );
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }

  Future profilesFromLastName(String token, String order) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      res = await _dio.get(
        AdminEndpoints.user.profilesFromLastName(order),
      );
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }

  Future profilesFromDrafts(String token, String order) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      res = await _dio.get(
        AdminEndpoints.user.profilesFromDrafts(order),
      );
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }

  Future profileDetails(String token, int id) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      res = await _dio.get(
        AdminEndpoints.user.profileDetails(id),
      );
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }

  Future uploadPhoto(String token, int id, String path) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      var data = FormData.fromMap({
        "image": MultipartFile.fromFile(path, filename: path.split("/").last),
      });
      res = await _dio.post(AdminEndpoints.user.uploadPhoto(id), data: data);
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }

  Future updatePhoto(String token, int id, String path) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      var data = FormData.fromMap({
        "image": MultipartFile.fromFile(
          path,
          filename: path.split("/").last,
        ),
        'image_id': id
      });
      res = await _dio.patch(AdminEndpoints.user.updatePhoto(id), data: data);
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }

  Future deletePhoto(
    String token,
    int id,
  ) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      var data = FormData.fromMap({'image_id': id});
      res = await _dio.delete(AdminEndpoints.user.deletePhoto(id), data: data);
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }

  Future updateProfile(String token, int id, Profile profile) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      var data = profile.toMap();
      res = await _dio.put(AdminEndpoints.user.updateProfile(id), data: data);
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }
   Future changePhone(String token, int id,) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      res = await _dio.post(AdminEndpoints.user.changePhone(id),);
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }
   Future newPhone(String token, String code, String phoneNumber) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      var body = Map.from({"code": code, "phone_number": phoneNumber});
      res = await _dio.patch(AdminEndpoints.user.newPhone, data: body);
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }
   Future activateAccount(String token, int id, ) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      res = await _dio.post(AdminEndpoints.user.activateAccount(id),);
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }
   Future deleteAccount(String token, int id) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      res = await _dio.delete(AdminEndpoints.user.deleteAccount(id),);
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }
  Future getCountries(String token,) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      res = await _dio.get(
        AdminEndpoints.regions.countries,
      );
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }
  Future getCities(String token) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      res = await _dio.get(
        AdminEndpoints.regions.cities,
      );
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }
  Future getGenders(String token) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      res = await _dio.get(
        AdminEndpoints.user.genders,
      );
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }
  Future getStatuses(String token,) async {
    Response<dynamic> res;
    try {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      res = await _dio.get(
        AdminEndpoints.user.statuses,
      );
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }
}
