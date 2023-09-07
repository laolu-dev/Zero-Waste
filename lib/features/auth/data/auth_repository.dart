import 'package:dio/dio.dart';
import 'package:zero_waste/core/constants/logger.dart';
import 'package:zero_waste/core/models/api_result/api_result.dart';
import 'package:zero_waste/core/service/dio_service.dart';

class AuthRepository {
  final DioService _service = DioService();

  Future<ApiResult> signUp(Map<String, dynamic> payload) async {
    try {
      final res = await _service.dio.post("/api/v1/auth/signup", data: payload);
      final apiResult = ApiSuccess.fromJson(res.data);
      return apiResult;
    } on DioException catch (e) {
      final error = e.response!.data;
      logger.e(e);
      final err = ApiError.fromJson(error);
      return err;
    }
  }

  Future<ApiResult> login(Map<String, dynamic> payload) async {
    try {
      final res = await _service.dio.post('/api/v1/auth/signin', data: payload);
      final apiResult = ApiSuccess.fromJson(res.data);
      return apiResult;
    } on DioException catch (e) {
      final error = e.response!.data;
      logger.e(e);
      final err = ApiError.fromJson(error);
      return err;
    }
  }

  //[PATCH] requests

  Future<ApiResult> verifyEmail(Map<String, dynamic> payload) async {
    // {"email": email, "otp": otp}
    try {
      final res = await _service.dio
          .patch('/api/v1/auth/verify-email', queryParameters: payload);

      final apiResult = ApiSuccess.fromJson(res.data);
      return apiResult;
    } on DioException catch (e) {
      final error = e.response!.data;
      final err = ApiError.fromJson(error);
      return err;
    }
  }

  Future<ApiResult> resetPassword(Map<String, dynamic> payload) async {
    try {
      // {"password": password, "email": email}
      final res = await _service.dio
          .patch('/api/v1/farmers/update-password/', data: payload);

      final apiResult = ApiSuccess.fromJson(res.data);
      return apiResult;
    } on DioException catch (e) {
      final error = e.response!.data;
      final err = ApiError.fromJson(error);
      return err;
    }
  }

  //[GET] requests

  Future<ApiResult> verifyResetOtp(Map<String, dynamic> payload) async {
    // {"email": email, "otp": otp}
    try {
      final res = await _service.dio.get('/api/v1/farmers/verify-password-otp/',
          queryParameters: payload);

      final apiResult = ApiSuccess.fromJson(res.data);
      return apiResult;
    } on DioException catch (e) {
      final error = e.response!.data;
      final err = ApiError.fromJson(error);
      return err;
    }
  }

  Future<ApiResult> requestToResetPassword(Map<String, dynamic> payload) async {
    // {"email": email}
    try {
      final res = await _service.dio
          .get('/api/v1/farmers/request-update/', queryParameters: payload);

      final apiResult = ApiSuccess.fromJson(res.data);
      return apiResult;
    } on DioException catch (e) {
      final error = e.response!.data;
      final err = ApiError.fromJson(error);
      return err;
    }
  }
}
