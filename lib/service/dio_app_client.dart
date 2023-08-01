import 'package:dio/dio.dart';

class DioAppClient {
  DioAppClient()
      : _dio = Dio(
          BaseOptions(),
        );

  final Dio _dio;

  
}
