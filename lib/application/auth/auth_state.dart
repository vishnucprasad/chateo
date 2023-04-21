part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoadig,
    required bool isError,
    required String? countryCode,
    required String? phone,
    required String? otp,
    required Verification? verification,
    required Auth? auth,
    required String? error,
    required Option<Either<AuthFailure, dynamic>> authOption,
  }) = _AuthState;

  factory AuthState.initial() {
    return AuthState(
      isLoadig: false,
      isError: false,
      countryCode: '+91',
      phone: null,
      otp: null,
      verification: null,
      auth: null,
      error: null,
      authOption: none(),
    );
  }
}
