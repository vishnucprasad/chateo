import 'package:chateo/domain/auth/i_auth_repo.dart';
import 'package:chateo/domain/core/api_endpoints.dart';
import 'package:chateo/domain/core/injection/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:chateo/domain/failures/auth/auth_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@Injectable(as: IAuthRepo)
class AuthRepo implements IAuthRepo {
  @override
  Future<Either<AuthFailure, String>> verifyPhone(
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
        return right(response.data["message"]);
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
