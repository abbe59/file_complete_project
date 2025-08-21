class StringHelper {
  static bool isNullOrEmpty(String? value) {
    return value == null || value.trim().isEmpty;
  }

  static String capitalize(String str) {
    if (str.isEmpty) return '';
    return str[0].toUpperCase() + str.substring(1);
  }
}
