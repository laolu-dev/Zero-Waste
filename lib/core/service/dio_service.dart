import 'package:dio/dio.dart';
import '../env/env.dart';

class DioService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://zero-waste-api.vercel.app',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      responseType: ResponseType.json,
      headers: {"apiKey": Env.apiKey},
    ),
  );

  Dio get dio => _dio;
}
