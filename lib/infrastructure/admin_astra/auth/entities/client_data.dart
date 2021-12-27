import 'package:dio/dio.dart';

class ClientData {
  String? phoneNumber;
  String? code;
  String? password;

  ClientData({this.phoneNumber, this.code, this.password});

  Map<String, dynamic> toMap() {
    return {'phone_number': phoneNumber, 'reset': password, 'code': code};
  }

  FormData toFormData() {
    return FormData.fromMap(toMap());
  }

  ClientData.fromOject(
    dynamic o,
  ) {
    code = o['code'];
    phoneNumber = o['phoneNumber'];
    password = o['password'];
  }
}
