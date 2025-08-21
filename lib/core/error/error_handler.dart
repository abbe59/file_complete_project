import 'package:dio/dio.dart';
import 'failures.dart';

// ignore: deprecated_member_use
Failure handleDioError(DioError error) {
  switch (error.type) {
    // ignore: deprecated_member_use
    case DioErrorType.connectionTimeout:
    // ignore: deprecated_member_use
    case DioErrorType.sendTimeout:
    // ignore: deprecated_member_use
    case DioErrorType.receiveTimeout:
      return NetworkFailure('Connection timeout');
    // ignore: deprecated_member_use
    case DioErrorType.cancel:
      return NetworkFailure('Request cancelled');
    // ignore: deprecated_member_use
    case DioErrorType.badResponse:
      return ServerFailure('Server error: ${error.response?.statusCode}');
    // ignore: deprecated_member_use
    case DioErrorType.unknown:
      return UnexpectedFailure('Unexpected error occurred');
    default:
      return UnexpectedFailure('Unexpected error');
  }
}
