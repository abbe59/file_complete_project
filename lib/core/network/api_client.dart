import 'package:dio/dio.dart';
import 'package:flutter_login_tuterual/configs/app_config.dart';

class ApiClient {
  final Dio dio = Dio(BaseOptions(baseUrl: AppConfig.baseUrl));

  ApiClient() {
    dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  Future<Response> get(String path) async {
    return dio.get(path);
  }
}
