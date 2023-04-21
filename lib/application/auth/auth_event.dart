part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.phoneChanged(String phone) = _PhoneChanged;
  const factory AuthEvent.countryCodeChanged(String? countryCode) =
      _CountryCodeChanged;
  const factory AuthEvent.verifyPhone() = _VerifyPhone;
  const factory AuthEvent.otpChanged(String? otp) = _OtpChanged;
  const factory AuthEvent.verifyOtp() = _VerifyOtp;
}
