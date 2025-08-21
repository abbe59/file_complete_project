import 'env.dart';

class AppConfig {
  static String get baseUrl {
    if (Env.isProduction) {
      return "https://api.production.com";
    } else {
      return "https://10.91.215.56:8000/api";
    }
  }

  static const String appName = "My Flutter App";
  static const int timeoutSeconds = 30;

  // أي إعدادات إضافية للتطبيق
  static Map<String, dynamic> get defaultHeaders => {
    "Content-Type": "application/json",
    "Accept": "application/json",
  };
}
