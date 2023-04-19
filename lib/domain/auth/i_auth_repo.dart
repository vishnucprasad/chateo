import 'package:chateo/domain/failures/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepo {
  Future<Either<AuthFailure, String>> verifyPhone(
    String? countryCode,
    String? phone,
  );
}
