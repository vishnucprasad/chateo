import 'package:chateo/domain/auth/auth.dart';
import 'package:chateo/domain/failures/auth/auth_failure.dart';
import 'package:chateo/domain/verification/verification.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepo {
  Future<Either<AuthFailure, Verification>> verifyPhone(
    String? countryCode,
    String? phone,
  );
  Future<Either<AuthFailure, Auth>> verifyOtp(
    String? countryCode,
    String? phone,
    String? otp,
  );
}
