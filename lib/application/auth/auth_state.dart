part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool isError,
    required bool isTokenExpired,
    required String? countryCode,
    required String? phone,
    required String? otp,
    required Token? accessToken,
    required Token? refreshToken,
    required Token? expiredToken,
    required Verification? verification,
    required Auth? auth,
    required String? error,
    required Option<Either<AuthFailure, dynamic>> authOption,
  }) = _AuthState;

  factory AuthState.initial() {
    return AuthState(
      isLoading: false,
      isError: false,
      isTokenExpired: false,
      countryCode: '+91',
      phone: null,
      otp: null,
      accessToken: null,
      refreshToken: null,
      expiredToken: null,
      verification: null,
      auth: null,
      error: null,
      authOption: none(),
    );
  }
}
