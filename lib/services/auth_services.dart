import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:getx_application1/model/login_request.dart';
class AuthService {
  final Dio dio = Dio();

  Future<Response> login(LoginRequest request) async {
    log("APi call started");
    final response = await dio.post(
      'https://testdealer.hinccms.in/api/login',
      data: request.toJson(),
    );

    return response;
  }
}