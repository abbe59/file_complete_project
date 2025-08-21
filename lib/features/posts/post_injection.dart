import 'package:dio/dio.dart';
import 'package:flutter_login_tuterual/features/posts/data/datasources/remote/api_client_post.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio() {
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {'Accept': 'application/json'},
      ),
    );
    return dio;
  }

  @lazySingleton
  ApiClientPost apiClientPost(Dio dio) => ApiClientPost(dio);
}
