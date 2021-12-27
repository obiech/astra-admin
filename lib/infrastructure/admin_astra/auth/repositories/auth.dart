import 'package:astra_admin_app/infrastructure/admin_astra/auth/entities/client_data.dart';
import 'package:astra_admin_app/infrastructure/core/helpers/endpoint/admin_endpoints.dart';
import 'package:dio/dio.dart';

class Auth {
  final _dio = Dio();

  Future checkPhone(ClientData user) async {
    Response<dynamic> res;
    try {
      var body = user.toFormData();
      res = await _dio.post(AdminEndpoints.auth.checkPhone, data: body);
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }

  Future login(ClientData user) async {
    Response<dynamic> res;
    try {
      var body =
          user.toFormData();
      res = await _dio.post(AdminEndpoints.auth.login,data: body);
      return res;
    } on DioError catch (e) {
      return e.response?.data;
    }
  }
  Future passwordReset(ClientData user) async {
    Response<dynamic> res;
    try {
      var body = user.toFormData();
      res = await _dio.post(AdminEndpoints.auth.passwordReset,data: body);
      return res;

    } on DioError catch (e) {
      return e.response?.data;
    }
  }
  Future checkSmsCode(ClientData user) async {
    Response<dynamic> res;
    try {
      var body = user.toFormData();
      res = await _dio.post(AdminEndpoints.auth.checkSmsCode,data: body);
      return res;

    } on DioError catch (e) {
      return e.response?.data;
    }
  }

  Future resetCode(ClientData user) async {
    Response<dynamic> res;
    try {
      var body = user.toFormData();
      res = await _dio.post(AdminEndpoints.auth.resetCode,data: body);
      return res;

    } on DioError catch (e) {
      return e.response?.data;
    }
  }
}
