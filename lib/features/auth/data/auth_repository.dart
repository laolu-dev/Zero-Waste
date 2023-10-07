import 'package:dio/dio.dart';
import 'package:zero_waste/core/service/dio_service.dart';
import 'package:zero_waste/features/auth/domain/user.dart';

class AuthRepository {
  final DioService _service = DioService();

  Future<User> signUp(Map<String, dynamic> payload) async {
    try {
      final res = await _service.dio.post("auth/signup", data: payload);
      return SuccessUser.fromJson(res.data);
    } on DioException catch (e) {
      final error = e.response!.data;
      return ErrorUser.fromJson(error);
    } 
  }

  Future<User> login(Map<String, dynamic> payload) async {
    try {
      final res = await _service.dio.post('auth/signin', data: payload);
      return SuccessUser.fromJson(res.data);
    } on DioException catch (e) {
      final error = e.response!.data;
      return ErrorUser.fromJson(error);
    }
  }

  Future<User> verifyEmail(Map<String, dynamic> payload) async {
    try {
      final res = await _service.dio
          .patch('auth/verify-email', queryParameters: payload);

      return SuccessUser.fromJson(res.data);
    } on DioException catch (e) {
      final error = e.response!.data;
      return ErrorUser.fromJson(error);
    }
  }

  Future<User> resetPassword(Map<String, dynamic> payload) async {
    try {
      final res =
          await _service.dio.patch('farmers/update-password/', data: payload);

      return SuccessUser.fromJson(res.data);
    } on DioException catch (e) {
      final error = e.response!.data;
      return ErrorUser.fromJson(error);
    }
  }

  Future<User> verifyResetOtp(Map<String, dynamic> payload) async {
    try {
      final res = await _service.dio
          .get('farmers/verify-password-otp/', queryParameters: payload);

      return SuccessUser.fromJson(res.data);
    } on DioException catch (e) {
      final error = e.response!.data;
      return ErrorUser.fromJson(error);
    }
  }

  Future<User> requestToResetPassword(Map<String, dynamic> payload) async {
    try {
      final res = await _service.dio
          .get('farmers/request-update/', queryParameters: payload);

      return SuccessUser.fromJson(res.data);
    } on DioException catch (e) {
      final error = e.response!.data;
      return ErrorUser.fromJson(error);
    }
  }
}
