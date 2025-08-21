// هذا الملف يحدد أنواع بيئات التشغيل
enum Environment { development, production }

// متغيرات البيئة النشطة
class Env {
  static const Environment current = Environment.development;

  // هل البيئة الحالية هي الإنتاج؟
  static bool get isProduction => current == Environment.production;
  static bool get isDevelopment => current == Environment.development;
}
