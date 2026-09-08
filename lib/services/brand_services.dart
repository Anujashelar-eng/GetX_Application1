import 'package:dio/dio.dart';
import 'dart:developer';
class BrandService {
  final Dio dio = Dio();

  Future<Response> getBrands(String token) async {
    print("SERVICE: API CALL STARTED");

    final response = await dio.get(
      'https://testdealer.hinccms.in/api/brand?Code_PK=&VALUE=&FromDate=&ToDate=',
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
        },
      ),
    );

    log("SERVICE: Status Code = ${response.statusCode}");
    log("SERVICE: Response = ${response.data}");

    return response;
  }
}