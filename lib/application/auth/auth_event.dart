part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.phoneChanged(String phone) = _PhoneChanged;
  const factory AuthEvent.countryCodeChanged(String? countryCode) =
      _CountryCodeChanged;
}
