import 'app_config.dart';

class ApiEndpoints {
  // روابط ثابتة للتطبيق
  static String get posts => "${AppConfig.baseUrl}/posts";
  static String get users => "${AppConfig.baseUrl}/users";
  static String get comments => "${AppConfig.baseUrl}/comments";

  // مثال لرابط فيه باراميتر
  static String postDetails(int id) => "${AppConfig.baseUrl}/posts/$id";

  // لو فيه API خاص بالمصادقة
  static String get login => "${AppConfig.baseUrl}/auth/login";
  static String get register => "${AppConfig.baseUrl}/auth/register";
}
