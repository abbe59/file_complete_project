import 'package:dio/dio.dart';
import 'endpoints.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DioClient {
  final Dio dio;

  DioClient() : dio = Dio(BaseOptions(baseUrl: Endpoints.baseUrl));
}
