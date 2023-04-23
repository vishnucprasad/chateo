import 'package:chateo/domain/auth/auth.dart';
import 'package:chateo/domain/auth/i_auth_repo.dart';
import 'package:chateo/domain/core/api_endpoints.dart';
import 'package:chateo/domain/core/constants.dart';
import 'package:chateo/domain/core/injection/injectable.dart';
import 'package:chateo/domain/token/token.dart';
import 'package:chateo/domain/user/user.dart';
import 'package:chateo/domain/verification/verification.dart';
import 'package:dartz/dartz.dart';
import 'package:chateo/domain/failures/auth/auth_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  @override
  Future<Either<AuthFailure, Token>> saveToken(String key, Token? token) async {
    try {
      final bool isValidToken = token != null &&
          token.token != null &&
          token.role != null &&
          token.type != null;

      if (!isValidToken) {
        return left(
          const AuthFailure.clientFailure("Invalid token"),
        );
      }

      await getIt<SharedPreferences>().setString(
        'auth_role',
        token.role == Roles.admin ? "admin" : "user",
      );
      await getIt<SharedPreferences>().setString(
        key,
        token.token!,
      );

      return right(token);
    } catch (_) {
      return left(
        const AuthFailure.clientFailure("Can't save token"),
      );
    }
  }

  @override
  Future<Either<AuthFailure, User>> authenticate() async {
    final accessToken = getIt<SharedPreferences>().getString("accessToken");

    try {
      final dio = getIt<Dio>();

      dio.options.headers["Authorization"] = "Bearer $accessToken";

      final Response response = await dio.get(ApiEndpoints.authenticate);

      if (response.statusCode == 200) {
        final admin = User.fromJson(response.data["user"]);
        return right(admin);
      }

      return left(
        const AuthFailure.clientFailure(
          "Something went wrong, please try again",
        ),
      );
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        return left(
          AuthFailure.tokenFailure(
            Token(
              role: Roles.admin,
              token: accessToken,
              type: TokenType.accessToken,
            ),
          ),
        );
      }

      if (e.response?.statusCode == 400 ||
          e.response?.statusCode == 404 ||
          e.response?.statusCode == 500) {
        return left(
          AuthFailure.serverFailure(e.response?.data?["message"]),
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
          'Something went wrong, please try again',
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Token>> refreshToken() async {
    final String? refreshToken =
        getIt<SharedPreferences>().getString("refreshToken");

    try {
      if (refreshToken == null || refreshToken.isEmpty) {
        return left(
          const AuthFailure.clientFailure(
            "Session expired, login to continue",
          ),
        );
      }

      final Map<String, String> data = {
        "refreshToken": refreshToken,
      };

      final Response response =
          await getIt<Dio>().post(ApiEndpoints.refreshToken, data: data);

      if (response.statusCode == 200) {
        return right(
          Token(
            role: Roles.user,
            token: response.data["accessToken"],
            type: TokenType.accessToken,
          ),
        );
      }

      return left(
        const AuthFailure.clientFailure(
          'Something went wrong, please try again',
        ),
      );
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        return left(
          AuthFailure.tokenFailure(
            Token(
              role: Roles.admin,
              token: refreshToken,
              type: TokenType.refreshToken,
            ),
          ),
        );
      }

      if (e.response?.statusCode == 404 || e.response?.statusCode == 500) {
        return left(
          AuthFailure.serverFailure(e.response?.data?["message"]),
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
          'Something went wrong, please try again',
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, User>> completeProfile(
    String? firstName,
    String? lastName,
  ) async {
    final accessToken = getIt<SharedPreferences>().getString("accessToken");

    try {
      final isValidFirstName = firstName != null && firstName.isNotEmpty;
      final isValidLastName = lastName != null && lastName.isNotEmpty;

      if (!isValidFirstName || !isValidLastName) {
        return left(
          const AuthFailure.clientFailure(
            "First and last name are required",
          ),
        );
      }

      final Map<String, dynamic> data = {
        "firstName": firstName,
        "lastName": lastName,
        "isProfileCompleted": true,
      };

      final dio = getIt<Dio>();

      dio.options.headers["Authorization"] = "Bearer $accessToken";

      final Response response = await dio.patch(
        ApiEndpoints.authenticate,
        data: data,
      );

      if (response.statusCode == 200) {
        final User user = User.fromJson(response.data["user"]);
        return right(user);
      }

      return left(
        const AuthFailure.clientFailure(
          "Something went wrong, please try again",
        ),
      );
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        return left(
          AuthFailure.tokenFailure(
            Token(
              role: Roles.admin,
              token: accessToken,
              type: TokenType.refreshToken,
            ),
          ),
        );
      }

      if (e.response?.statusCode == 404 || e.response?.statusCode == 500) {
        return left(
          AuthFailure.serverFailure(e.response?.data?["message"]),
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
          'Something went wrong, please try again',
        ),
      );
    }
  }
}
