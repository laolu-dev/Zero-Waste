import 'package:dio/dio.dart';
import 'package:zero_waste/env/env.dart';
import 'package:zero_waste/models/user.dart';
import 'package:zero_waste/utils/logger.dart';

import 'dio_exception.dart';

class DioClient {
  DioClient()
      : _dio = Dio(
          BaseOptions(
              baseUrl: 'https://zero-waste-api.vercel.app',
              connectTimeout: const Duration(seconds: 10),
              receiveTimeout: const Duration(seconds: 10),
              responseType: ResponseType.json,
              headers: {"apiKey": Env.apiKey}),
        );

  late final Dio _dio;

  Future signUp(Farmer user) async {
    try {
      await _dio.post("/api/v1/auth/signup", data: user.toJson());
    } on DioException catch (e) {
      logger.e(e.message);
    }
  }

  Future verify(String email, String otp) async {
    try {
      await _dio.patch(
        '/api/v1/auth/verify-email',
        queryParameters: {"email": email, "otp": otp},
      );
    } on DioException catch (e) {
      logger.e(e.message);
    }
  }

  Future<Map<String, dynamic>> login(String email, String password) async {
    Map<String, dynamic> user = {};
    try {
      await _dio.post(
        '/api/v1/auth/signin',
        data: {"password": password, "email": email},
      ).then((value) => user = value.data["user"]);
      return user;
    } on DioException catch (e) {
      var error = AppDioError.fromDioException(e.type, e.response?.statusCode);
      return {"error": error.errorMessage};
    }
  }
}
