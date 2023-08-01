import 'package:dio/dio.dart';
import 'package:zero_waste/env/env.dart';
import 'package:zero_waste/models/user.dart';
import 'package:zero_waste/utils/logger.dart';
import '../utils/dio_exception.dart';

class DioAuthClient {
  DioAuthClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: 'https://zero-waste-api.vercel.app',
            connectTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 10),
            responseType: ResponseType.json,
            headers: {"apiKey": Env.apiKey},
          ),
        );

  late final Dio _dio;

  //[POST] requests

  Future signUp(Farmer user) async {
    try {
      final res = await _dio.post(
        "/api/v1/auth/signup",
        data: user.toJson(),
      );
      if (res.data["success"] == true) {
        return res.data["user"];
      }
    } on DioException catch (e) {
      logger.e(e.message);
      var err = AppDioError.fromDioException(e.type, e.response?.statusCode);

      return err.errorMessage;
    }
  }

  Future login(String email, String password) async {
    try {
      final res = await _dio.post(
        '/api/v1/auth/signin',
        data: {"password": password, "email": email},
      );
      if (res.data["success"] == true) {
        return res.data["user"];
      }
    } on DioException catch (e) {
      logger.e(e.message);
      var error = AppDioError.fromDioException(e.type, e.response?.statusCode);
      return error.errorMessage;
    }
  }

  //[PATCH] requests

  Future verifyEmail(String email, String otp) async {
    try {
      final res = await _dio.patch(
        '/api/v1/auth/verify-email',
        queryParameters: {"email": email, "otp": otp},
      );
      return res.data["success"] as bool;
    } on DioException catch (e) {
      logger.e(e.message);
      var err = AppDioError.fromDioException(e.type, e.response?.statusCode);
      return err.errorMessage;
    }
  }

  Future resetPassword(String password, String email) async {
    try {
      final res = await _dio.patch(
        '/api/v1/farmers/update-password/',
        data: {"password": password, "email": email},
      );
      if (res.data["success"] == true) {
        logger.i("Success");
      }
    } on DioException catch (e) {
      logger.e(e.message);
      var error = AppDioError.fromDioException(e.type, e.response?.statusCode);
      return error.errorMessage;
    }
  }

  //[GET] requests

  Future verifyResetOtp(String email, String otp) async {
    try {
      final res = await _dio.get(
        '/api/v1/farmers/verify-password-otp/',
        queryParameters: {"email": email, "otp": otp},
      );
      if (res.data["success"] == true) {
        logger.i("Success");
      }
    } on DioException catch (e) {
      logger.e(e.message);
      var error = AppDioError.fromDioException(e.type, e.response?.statusCode);
      return error.errorMessage;
    }
  }

  Future requestToResetPassword(String email) async {
    try {
      final res = await _dio.get(
        '/api/v1/farmers/request-update/',
        queryParameters: {"email": email},
      );
      if (res.data["success"] == true) {
        logger.i("Success");
      }
    } on DioException catch (e) {
      logger.e(e.message);
      var error = AppDioError.fromDioException(e.type, e.response?.statusCode);
      return error.errorMessage;
    }
  }
}
