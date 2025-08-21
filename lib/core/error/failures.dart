abstract class Failure {
  final String message;
  Failure(this.message);
}

// خطأ في الشبكة (مثل Timeout أو فقدان الانترنت)
class NetworkFailure extends Failure {
  // ignore: use_super_parameters
  NetworkFailure(String message) : super(message);
}

// خطأ في السيرفر (مثل 500، 404)
class ServerFailure extends Failure {
  // ignore: use_super_parameters
  ServerFailure(String message) : super(message);
}

// خطأ غير متوقع (حالات لم يتم التعامل معها)
class UnexpectedFailure extends Failure {
  // ignore: use_super_parameters
  UnexpectedFailure(String message) : super(message);
}

// خطأ في المصادقة أو الToken
class AuthFailure extends Failure {
  // ignore: use_super_parameters
  AuthFailure(String message) : super(message);
}

// خطأ في البيانات أو التحويل من JSON
class DataParsingFailure extends Failure {
  // ignore: use_super_parameters
  DataParsingFailure(String message) : super(message);
}
