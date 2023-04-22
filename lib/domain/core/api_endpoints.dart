import 'package:chateo/core/constants.dart';

class ApiEndpoints {
  static const String verifyPhone = '$kBaseUrl/auth/verify/phone';
  static const String verifyOtp = '$kBaseUrl/auth/verify/otp';
  static const String authenticate = '$kBaseUrl/auth';
  static const String refreshToken = '$kBaseUrl/auth/refresh';
}
