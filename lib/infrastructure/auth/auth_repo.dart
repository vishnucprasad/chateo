import 'package:chateo/domain/auth/auth.dart';
import 'package:chateo/domain/auth/i_auth_repo.dart';
import 'package:chateo/domain/core/api_endpoints.dart';
import 'package:chateo/domain/core/injection/injectable.dart';
import 'package:chateo/domain/verification/verification.dart';
import 'package:dartz/dartz.dart';
import 'package:chateo/domain/failures/auth/auth_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@Injectable(as: IAuthRepo)
class AuthRepo implements IAuthRepo {
  @override
  Future<Either<AuthFailure, Verification>> verifyPhone(
    String? countryCode,
    String? phone,
  ) async {
    try {
      final bool isValidCountryCode =
          countryCode != null && countryCode.isNotEmpty;
      final bool isValidPhone = phone != null && phone.isNotEmpty;

      if (!isValidCountryCode || !isValidPhone) {
        return left(
          const AuthFailure.clientFailure("Invalid credentials"),
        );
      }

      final Map<String, String> data = {
        "countryCode": countryCode,
        "phone": phone,
      };

      final Response response = await getIt<Dio>().post(
        ApiEndpoints.verifyPhone,
        data: data,
      );

      if (response.statusCode == 200) {
        final Verification verification =
            Verification.fromJson(response.data["verification"]);
        return right(verification);
      }

      return left(
        const AuthFailure.clientFailure(
          "Something went wrong, please try again",
        ),
      );
    } on DioError catch (e) {
      if (e.response?.statusCode == 400 ||
          e.response?.statusCode == 401 ||
          e.response?.statusCode == 404 ||
          e.response?.statusCode == 500) {
        return left(
          AuthFailure.serverFailure(e.response?.data?["description"]),
        );
      }

      return left(
        const AuthFailure.serverFailure(
          "Something went wrong on the server side",
        ),
      );
    } catch (_) {
      return left(
        const AuthFailure.clientFailure(
          "Something went wrong, please try again",
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Auth>> verifyOtp(
    String? countryCode,
    String? phone,
    String? otp,
  ) async {
    try {
      final bool isValidOtp = otp != null && otp.length == 4;
      final bool isValidCountryCode =
          countryCode != null && countryCode.isNotEmpty;
      final bool isValidPhone = phone != null && phone.isNotEmpty;

      if (!isValidOtp || !isValidCountryCode || !isValidPhone) {
        return left(
          const AuthFailure.clientFailure("Invalid OTP"),
        );
      }

      final Map<String, String> data = {
        "countryCode": countryCode,
        "phone": phone,
        "otp": otp,
      };

      final Response response = await getIt<Dio>().post(
        ApiEndpoints.verifyOtp,
        data: data,
      );

      if (response.statusCode == 200) {
        final Auth auth = Auth.fromJson(response.data);

        return right(auth);
      }

      return left(
        const AuthFailure.clientFailure(
          "Something went wrong, please try again",
        ),
      );
    } on DioError catch (e) {
      if (e.response?.statusCode == 400 ||
          e.response?.statusCode == 401 ||
          e.response?.statusCode == 404 ||
          e.response?.statusCode == 500) {
        return left(
          AuthFailure.serverFailure(e.response?.data?["description"]),
        );
      }

      return left(
        const AuthFailure.serverFailure(
          "Something went wrong on the server side",
        ),
      );
    } catch (_) {
      return left(
        const AuthFailure.clientFailure(
          "Something went wrong, please try again",
        ),
      );
    }
  }
}
