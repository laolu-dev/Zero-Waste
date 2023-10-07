import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../env/env.dart';

class DioService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://zero-waste-api.onrender.com/api/v1/',
      connectTimeout: const Duration(seconds: 180),
      receiveTimeout: const Duration(seconds: 180),
      responseType: ResponseType.json,
      headers: {"apiKey": Env.apiKey},
    ),
  )..interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        maxWidth: 125,
      ),
    );

  Dio get dio => _dio;
}
