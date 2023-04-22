// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String? countryCode) countryCodeChanged,
    required TResult Function() verifyPhone,
    required TResult Function(String? otp) otpChanged,
    required TResult Function() verifyOtp,
    required TResult Function(String key, Token? token) saveToken,
    required TResult Function() authenticate,
    required TResult Function() refreshToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String? countryCode)? countryCodeChanged,
    TResult? Function()? verifyPhone,
    TResult? Function(String? otp)? otpChanged,
    TResult? Function()? verifyOtp,
    TResult? Function(String key, Token? token)? saveToken,
    TResult? Function()? authenticate,
    TResult? Function()? refreshToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String? countryCode)? countryCodeChanged,
    TResult Function()? verifyPhone,
    TResult Function(String? otp)? otpChanged,
    TResult Function()? verifyOtp,
    TResult Function(String key, Token? token)? saveToken,
    TResult Function()? authenticate,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_VerifyPhone value) verifyPhone,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SaveToken value) saveToken,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_RefreshToken value) refreshToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_VerifyPhone value)? verifyPhone,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SaveToken value)? saveToken,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_RefreshToken value)? refreshToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_VerifyPhone value)? verifyPhone,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SaveToken value)? saveToken,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PhoneChangedCopyWith<$Res> {
  factory _$$_PhoneChangedCopyWith(
          _$_PhoneChanged value, $Res Function(_$_PhoneChanged) then) =
      __$$_PhoneChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$_PhoneChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_PhoneChanged>
    implements _$$_PhoneChangedCopyWith<$Res> {
  __$$_PhoneChangedCopyWithImpl(
      _$_PhoneChanged _value, $Res Function(_$_PhoneChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$_PhoneChanged(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneChanged with DiagnosticableTreeMixin implements _PhoneChanged {
  const _$_PhoneChanged(this.phone);

  @override
  final String phone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.phoneChanged(phone: $phone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.phoneChanged'))
      ..add(DiagnosticsProperty('phone', phone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneChanged &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneChangedCopyWith<_$_PhoneChanged> get copyWith =>
      __$$_PhoneChangedCopyWithImpl<_$_PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String? countryCode) countryCodeChanged,
    required TResult Function() verifyPhone,
    required TResult Function(String? otp) otpChanged,
    required TResult Function() verifyOtp,
    required TResult Function(String key, Token? token) saveToken,
    required TResult Function() authenticate,
    required TResult Function() refreshToken,
  }) {
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String? countryCode)? countryCodeChanged,
    TResult? Function()? verifyPhone,
    TResult? Function(String? otp)? otpChanged,
    TResult? Function()? verifyOtp,
    TResult? Function(String key, Token? token)? saveToken,
    TResult? Function()? authenticate,
    TResult? Function()? refreshToken,
  }) {
    return phoneChanged?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String? countryCode)? countryCodeChanged,
    TResult Function()? verifyPhone,
    TResult Function(String? otp)? otpChanged,
    TResult Function()? verifyOtp,
    TResult Function(String key, Token? token)? saveToken,
    TResult Function()? authenticate,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_VerifyPhone value) verifyPhone,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SaveToken value) saveToken,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_RefreshToken value) refreshToken,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_VerifyPhone value)? verifyPhone,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SaveToken value)? saveToken,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_RefreshToken value)? refreshToken,
  }) {
    return phoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_VerifyPhone value)? verifyPhone,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SaveToken value)? saveToken,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChanged implements AuthEvent {
  const factory _PhoneChanged(final String phone) = _$_PhoneChanged;

  String get phone;
  @JsonKey(ignore: true)
  _$$_PhoneChangedCopyWith<_$_PhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CountryCodeChangedCopyWith<$Res> {
  factory _$$_CountryCodeChangedCopyWith(_$_CountryCodeChanged value,
          $Res Function(_$_CountryCodeChanged) then) =
      __$$_CountryCodeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? countryCode});
}

/// @nodoc
class __$$_CountryCodeChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CountryCodeChanged>
    implements _$$_CountryCodeChangedCopyWith<$Res> {
  __$$_CountryCodeChangedCopyWithImpl(
      _$_CountryCodeChanged _value, $Res Function(_$_CountryCodeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = freezed,
  }) {
    return _then(_$_CountryCodeChanged(
      freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CountryCodeChanged
    with DiagnosticableTreeMixin
    implements _CountryCodeChanged {
  const _$_CountryCodeChanged(this.countryCode);

  @override
  final String? countryCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.countryCodeChanged(countryCode: $countryCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.countryCodeChanged'))
      ..add(DiagnosticsProperty('countryCode', countryCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryCodeChanged &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryCodeChangedCopyWith<_$_CountryCodeChanged> get copyWith =>
      __$$_CountryCodeChangedCopyWithImpl<_$_CountryCodeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String? countryCode) countryCodeChanged,
    required TResult Function() verifyPhone,
    required TResult Function(String? otp) otpChanged,
    required TResult Function() verifyOtp,
    required TResult Function(String key, Token? token) saveToken,
    required TResult Function() authenticate,
    required TResult Function() refreshToken,
  }) {
    return countryCodeChanged(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String? countryCode)? countryCodeChanged,
    TResult? Function()? verifyPhone,
    TResult? Function(String? otp)? otpChanged,
    TResult? Function()? verifyOtp,
    TResult? Function(String key, Token? token)? saveToken,
    TResult? Function()? authenticate,
    TResult? Function()? refreshToken,
  }) {
    return countryCodeChanged?.call(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String? countryCode)? countryCodeChanged,
    TResult Function()? verifyPhone,
    TResult Function(String? otp)? otpChanged,
    TResult Function()? verifyOtp,
    TResult Function(String key, Token? token)? saveToken,
    TResult Function()? authenticate,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) {
    if (countryCodeChanged != null) {
      return countryCodeChanged(countryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_VerifyPhone value) verifyPhone,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SaveToken value) saveToken,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_RefreshToken value) refreshToken,
  }) {
    return countryCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_VerifyPhone value)? verifyPhone,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SaveToken value)? saveToken,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_RefreshToken value)? refreshToken,
  }) {
    return countryCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_VerifyPhone value)? verifyPhone,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SaveToken value)? saveToken,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (countryCodeChanged != null) {
      return countryCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _CountryCodeChanged implements AuthEvent {
  const factory _CountryCodeChanged(final String? countryCode) =
      _$_CountryCodeChanged;

  String? get countryCode;
  @JsonKey(ignore: true)
  _$$_CountryCodeChangedCopyWith<_$_CountryCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifyPhoneCopyWith<$Res> {
  factory _$$_VerifyPhoneCopyWith(
          _$_VerifyPhone value, $Res Function(_$_VerifyPhone) then) =
      __$$_VerifyPhoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifyPhoneCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_VerifyPhone>
    implements _$$_VerifyPhoneCopyWith<$Res> {
  __$$_VerifyPhoneCopyWithImpl(
      _$_VerifyPhone _value, $Res Function(_$_VerifyPhone) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_VerifyPhone with DiagnosticableTreeMixin implements _VerifyPhone {
  const _$_VerifyPhone();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.verifyPhone()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.verifyPhone'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VerifyPhone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String? countryCode) countryCodeChanged,
    required TResult Function() verifyPhone,
    required TResult Function(String? otp) otpChanged,
    required TResult Function() verifyOtp,
    required TResult Function(String key, Token? token) saveToken,
    required TResult Function() authenticate,
    required TResult Function() refreshToken,
  }) {
    return verifyPhone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String? countryCode)? countryCodeChanged,
    TResult? Function()? verifyPhone,
    TResult? Function(String? otp)? otpChanged,
    TResult? Function()? verifyOtp,
    TResult? Function(String key, Token? token)? saveToken,
    TResult? Function()? authenticate,
    TResult? Function()? refreshToken,
  }) {
    return verifyPhone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String? countryCode)? countryCodeChanged,
    TResult Function()? verifyPhone,
    TResult Function(String? otp)? otpChanged,
    TResult Function()? verifyOtp,
    TResult Function(String key, Token? token)? saveToken,
    TResult Function()? authenticate,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) {
    if (verifyPhone != null) {
      return verifyPhone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_VerifyPhone value) verifyPhone,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SaveToken value) saveToken,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_RefreshToken value) refreshToken,
  }) {
    return verifyPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_VerifyPhone value)? verifyPhone,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SaveToken value)? saveToken,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_RefreshToken value)? refreshToken,
  }) {
    return verifyPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_VerifyPhone value)? verifyPhone,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SaveToken value)? saveToken,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (verifyPhone != null) {
      return verifyPhone(this);
    }
    return orElse();
  }
}

abstract class _VerifyPhone implements AuthEvent {
  const factory _VerifyPhone() = _$_VerifyPhone;
}

/// @nodoc
abstract class _$$_OtpChangedCopyWith<$Res> {
  factory _$$_OtpChangedCopyWith(
          _$_OtpChanged value, $Res Function(_$_OtpChanged) then) =
      __$$_OtpChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? otp});
}

/// @nodoc
class __$$_OtpChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_OtpChanged>
    implements _$$_OtpChangedCopyWith<$Res> {
  __$$_OtpChangedCopyWithImpl(
      _$_OtpChanged _value, $Res Function(_$_OtpChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_$_OtpChanged(
      freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OtpChanged with DiagnosticableTreeMixin implements _OtpChanged {
  const _$_OtpChanged(this.otp);

  @override
  final String? otp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.otpChanged(otp: $otp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.otpChanged'))
      ..add(DiagnosticsProperty('otp', otp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpChanged &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpChangedCopyWith<_$_OtpChanged> get copyWith =>
      __$$_OtpChangedCopyWithImpl<_$_OtpChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String? countryCode) countryCodeChanged,
    required TResult Function() verifyPhone,
    required TResult Function(String? otp) otpChanged,
    required TResult Function() verifyOtp,
    required TResult Function(String key, Token? token) saveToken,
    required TResult Function() authenticate,
    required TResult Function() refreshToken,
  }) {
    return otpChanged(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String? countryCode)? countryCodeChanged,
    TResult? Function()? verifyPhone,
    TResult? Function(String? otp)? otpChanged,
    TResult? Function()? verifyOtp,
    TResult? Function(String key, Token? token)? saveToken,
    TResult? Function()? authenticate,
    TResult? Function()? refreshToken,
  }) {
    return otpChanged?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String? countryCode)? countryCodeChanged,
    TResult Function()? verifyPhone,
    TResult Function(String? otp)? otpChanged,
    TResult Function()? verifyOtp,
    TResult Function(String key, Token? token)? saveToken,
    TResult Function()? authenticate,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_VerifyPhone value) verifyPhone,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SaveToken value) saveToken,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_RefreshToken value) refreshToken,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_VerifyPhone value)? verifyPhone,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SaveToken value)? saveToken,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_RefreshToken value)? refreshToken,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_VerifyPhone value)? verifyPhone,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SaveToken value)? saveToken,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class _OtpChanged implements AuthEvent {
  const factory _OtpChanged(final String? otp) = _$_OtpChanged;

  String? get otp;
  @JsonKey(ignore: true)
  _$$_OtpChangedCopyWith<_$_OtpChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifyOtpCopyWith<$Res> {
  factory _$$_VerifyOtpCopyWith(
          _$_VerifyOtp value, $Res Function(_$_VerifyOtp) then) =
      __$$_VerifyOtpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifyOtpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_VerifyOtp>
    implements _$$_VerifyOtpCopyWith<$Res> {
  __$$_VerifyOtpCopyWithImpl(
      _$_VerifyOtp _value, $Res Function(_$_VerifyOtp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_VerifyOtp with DiagnosticableTreeMixin implements _VerifyOtp {
  const _$_VerifyOtp();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.verifyOtp()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.verifyOtp'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VerifyOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String? countryCode) countryCodeChanged,
    required TResult Function() verifyPhone,
    required TResult Function(String? otp) otpChanged,
    required TResult Function() verifyOtp,
    required TResult Function(String key, Token? token) saveToken,
    required TResult Function() authenticate,
    required TResult Function() refreshToken,
  }) {
    return verifyOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String? countryCode)? countryCodeChanged,
    TResult? Function()? verifyPhone,
    TResult? Function(String? otp)? otpChanged,
    TResult? Function()? verifyOtp,
    TResult? Function(String key, Token? token)? saveToken,
    TResult? Function()? authenticate,
    TResult? Function()? refreshToken,
  }) {
    return verifyOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String? countryCode)? countryCodeChanged,
    TResult Function()? verifyPhone,
    TResult Function(String? otp)? otpChanged,
    TResult Function()? verifyOtp,
    TResult Function(String key, Token? token)? saveToken,
    TResult Function()? authenticate,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_VerifyPhone value) verifyPhone,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SaveToken value) saveToken,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_RefreshToken value) refreshToken,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_VerifyPhone value)? verifyPhone,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SaveToken value)? saveToken,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_RefreshToken value)? refreshToken,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_VerifyPhone value)? verifyPhone,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SaveToken value)? saveToken,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtp implements AuthEvent {
  const factory _VerifyOtp() = _$_VerifyOtp;
}

/// @nodoc
abstract class _$$_SaveTokenCopyWith<$Res> {
  factory _$$_SaveTokenCopyWith(
          _$_SaveToken value, $Res Function(_$_SaveToken) then) =
      __$$_SaveTokenCopyWithImpl<$Res>;
  @useResult
  $Res call({String key, Token? token});

  $TokenCopyWith<$Res>? get token;
}

/// @nodoc
class __$$_SaveTokenCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SaveToken>
    implements _$$_SaveTokenCopyWith<$Res> {
  __$$_SaveTokenCopyWithImpl(
      _$_SaveToken _value, $Res Function(_$_SaveToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? token = freezed,
  }) {
    return _then(_$_SaveToken(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res>? get token {
    if (_value.token == null) {
      return null;
    }

    return $TokenCopyWith<$Res>(_value.token!, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc

class _$_SaveToken with DiagnosticableTreeMixin implements _SaveToken {
  const _$_SaveToken(this.key, this.token);

  @override
  final String key;
  @override
  final Token? token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.saveToken(key: $key, token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.saveToken'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveToken &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveTokenCopyWith<_$_SaveToken> get copyWith =>
      __$$_SaveTokenCopyWithImpl<_$_SaveToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String? countryCode) countryCodeChanged,
    required TResult Function() verifyPhone,
    required TResult Function(String? otp) otpChanged,
    required TResult Function() verifyOtp,
    required TResult Function(String key, Token? token) saveToken,
    required TResult Function() authenticate,
    required TResult Function() refreshToken,
  }) {
    return saveToken(key, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String? countryCode)? countryCodeChanged,
    TResult? Function()? verifyPhone,
    TResult? Function(String? otp)? otpChanged,
    TResult? Function()? verifyOtp,
    TResult? Function(String key, Token? token)? saveToken,
    TResult? Function()? authenticate,
    TResult? Function()? refreshToken,
  }) {
    return saveToken?.call(key, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String? countryCode)? countryCodeChanged,
    TResult Function()? verifyPhone,
    TResult Function(String? otp)? otpChanged,
    TResult Function()? verifyOtp,
    TResult Function(String key, Token? token)? saveToken,
    TResult Function()? authenticate,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) {
    if (saveToken != null) {
      return saveToken(key, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_VerifyPhone value) verifyPhone,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SaveToken value) saveToken,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_RefreshToken value) refreshToken,
  }) {
    return saveToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_VerifyPhone value)? verifyPhone,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SaveToken value)? saveToken,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_RefreshToken value)? refreshToken,
  }) {
    return saveToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_VerifyPhone value)? verifyPhone,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SaveToken value)? saveToken,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (saveToken != null) {
      return saveToken(this);
    }
    return orElse();
  }
}

abstract class _SaveToken implements AuthEvent {
  const factory _SaveToken(final String key, final Token? token) = _$_SaveToken;

  String get key;
  Token? get token;
  @JsonKey(ignore: true)
  _$$_SaveTokenCopyWith<_$_SaveToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticateCopyWith<$Res> {
  factory _$$_AuthenticateCopyWith(
          _$_Authenticate value, $Res Function(_$_Authenticate) then) =
      __$$_AuthenticateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticateCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Authenticate>
    implements _$$_AuthenticateCopyWith<$Res> {
  __$$_AuthenticateCopyWithImpl(
      _$_Authenticate _value, $Res Function(_$_Authenticate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticate with DiagnosticableTreeMixin implements _Authenticate {
  const _$_Authenticate();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.authenticate()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.authenticate'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String? countryCode) countryCodeChanged,
    required TResult Function() verifyPhone,
    required TResult Function(String? otp) otpChanged,
    required TResult Function() verifyOtp,
    required TResult Function(String key, Token? token) saveToken,
    required TResult Function() authenticate,
    required TResult Function() refreshToken,
  }) {
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String? countryCode)? countryCodeChanged,
    TResult? Function()? verifyPhone,
    TResult? Function(String? otp)? otpChanged,
    TResult? Function()? verifyOtp,
    TResult? Function(String key, Token? token)? saveToken,
    TResult? Function()? authenticate,
    TResult? Function()? refreshToken,
  }) {
    return authenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String? countryCode)? countryCodeChanged,
    TResult Function()? verifyPhone,
    TResult Function(String? otp)? otpChanged,
    TResult Function()? verifyOtp,
    TResult Function(String key, Token? token)? saveToken,
    TResult Function()? authenticate,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_VerifyPhone value) verifyPhone,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SaveToken value) saveToken,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_RefreshToken value) refreshToken,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_VerifyPhone value)? verifyPhone,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SaveToken value)? saveToken,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_RefreshToken value)? refreshToken,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_VerifyPhone value)? verifyPhone,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SaveToken value)? saveToken,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class _Authenticate implements AuthEvent {
  const factory _Authenticate() = _$_Authenticate;
}

/// @nodoc
abstract class _$$_RefreshTokenCopyWith<$Res> {
  factory _$$_RefreshTokenCopyWith(
          _$_RefreshToken value, $Res Function(_$_RefreshToken) then) =
      __$$_RefreshTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshTokenCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_RefreshToken>
    implements _$$_RefreshTokenCopyWith<$Res> {
  __$$_RefreshTokenCopyWithImpl(
      _$_RefreshToken _value, $Res Function(_$_RefreshToken) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshToken with DiagnosticableTreeMixin implements _RefreshToken {
  const _$_RefreshToken();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.refreshToken()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.refreshToken'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String? countryCode) countryCodeChanged,
    required TResult Function() verifyPhone,
    required TResult Function(String? otp) otpChanged,
    required TResult Function() verifyOtp,
    required TResult Function(String key, Token? token) saveToken,
    required TResult Function() authenticate,
    required TResult Function() refreshToken,
  }) {
    return refreshToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String? countryCode)? countryCodeChanged,
    TResult? Function()? verifyPhone,
    TResult? Function(String? otp)? otpChanged,
    TResult? Function()? verifyOtp,
    TResult? Function(String key, Token? token)? saveToken,
    TResult? Function()? authenticate,
    TResult? Function()? refreshToken,
  }) {
    return refreshToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String? countryCode)? countryCodeChanged,
    TResult Function()? verifyPhone,
    TResult Function(String? otp)? otpChanged,
    TResult Function()? verifyOtp,
    TResult Function(String key, Token? token)? saveToken,
    TResult Function()? authenticate,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_VerifyPhone value) verifyPhone,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SaveToken value) saveToken,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_RefreshToken value) refreshToken,
  }) {
    return refreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_VerifyPhone value)? verifyPhone,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SaveToken value)? saveToken,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_RefreshToken value)? refreshToken,
  }) {
    return refreshToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_VerifyPhone value)? verifyPhone,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SaveToken value)? saveToken,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this);
    }
    return orElse();
  }
}

abstract class _RefreshToken implements AuthEvent {
  const factory _RefreshToken() = _$_RefreshToken;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isTokenExpired => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  Token? get accessToken => throw _privateConstructorUsedError;
  Token? get refreshToken => throw _privateConstructorUsedError;
  Token? get expiredToken => throw _privateConstructorUsedError;
  Verification? get verification => throw _privateConstructorUsedError;
  Auth? get auth => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, dynamic>> get authOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool isTokenExpired,
      String? countryCode,
      String? phone,
      String? otp,
      Token? accessToken,
      Token? refreshToken,
      Token? expiredToken,
      Verification? verification,
      Auth? auth,
      String? error,
      Option<Either<AuthFailure, dynamic>> authOption});

  $TokenCopyWith<$Res>? get accessToken;
  $TokenCopyWith<$Res>? get refreshToken;
  $TokenCopyWith<$Res>? get expiredToken;
  $VerificationCopyWith<$Res>? get verification;
  $AuthCopyWith<$Res>? get auth;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isTokenExpired = null,
    Object? countryCode = freezed,
    Object? phone = freezed,
    Object? otp = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiredToken = freezed,
    Object? verification = freezed,
    Object? auth = freezed,
    Object? error = freezed,
    Object? authOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isTokenExpired: null == isTokenExpired
          ? _value.isTokenExpired
          : isTokenExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as Token?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as Token?,
      expiredToken: freezed == expiredToken
          ? _value.expiredToken
          : expiredToken // ignore: cast_nullable_to_non_nullable
              as Token?,
      verification: freezed == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as Verification?,
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      authOption: null == authOption
          ? _value.authOption
          : authOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, dynamic>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res>? get accessToken {
    if (_value.accessToken == null) {
      return null;
    }

    return $TokenCopyWith<$Res>(_value.accessToken!, (value) {
      return _then(_value.copyWith(accessToken: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res>? get refreshToken {
    if (_value.refreshToken == null) {
      return null;
    }

    return $TokenCopyWith<$Res>(_value.refreshToken!, (value) {
      return _then(_value.copyWith(refreshToken: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res>? get expiredToken {
    if (_value.expiredToken == null) {
      return null;
    }

    return $TokenCopyWith<$Res>(_value.expiredToken!, (value) {
      return _then(_value.copyWith(expiredToken: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VerificationCopyWith<$Res>? get verification {
    if (_value.verification == null) {
      return null;
    }

    return $VerificationCopyWith<$Res>(_value.verification!, (value) {
      return _then(_value.copyWith(verification: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthCopyWith<$Res>? get auth {
    if (_value.auth == null) {
      return null;
    }

    return $AuthCopyWith<$Res>(_value.auth!, (value) {
      return _then(_value.copyWith(auth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool isTokenExpired,
      String? countryCode,
      String? phone,
      String? otp,
      Token? accessToken,
      Token? refreshToken,
      Token? expiredToken,
      Verification? verification,
      Auth? auth,
      String? error,
      Option<Either<AuthFailure, dynamic>> authOption});

  @override
  $TokenCopyWith<$Res>? get accessToken;
  @override
  $TokenCopyWith<$Res>? get refreshToken;
  @override
  $TokenCopyWith<$Res>? get expiredToken;
  @override
  $VerificationCopyWith<$Res>? get verification;
  @override
  $AuthCopyWith<$Res>? get auth;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isTokenExpired = null,
    Object? countryCode = freezed,
    Object? phone = freezed,
    Object? otp = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiredToken = freezed,
    Object? verification = freezed,
    Object? auth = freezed,
    Object? error = freezed,
    Object? authOption = null,
  }) {
    return _then(_$_AuthState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isTokenExpired: null == isTokenExpired
          ? _value.isTokenExpired
          : isTokenExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as Token?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as Token?,
      expiredToken: freezed == expiredToken
          ? _value.expiredToken
          : expiredToken // ignore: cast_nullable_to_non_nullable
              as Token?,
      verification: freezed == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as Verification?,
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      authOption: null == authOption
          ? _value.authOption
          : authOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_AuthState with DiagnosticableTreeMixin implements _AuthState {
  const _$_AuthState(
      {required this.isLoading,
      required this.isError,
      required this.isTokenExpired,
      required this.countryCode,
      required this.phone,
      required this.otp,
      required this.accessToken,
      required this.refreshToken,
      required this.expiredToken,
      required this.verification,
      required this.auth,
      required this.error,
      required this.authOption});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool isTokenExpired;
  @override
  final String? countryCode;
  @override
  final String? phone;
  @override
  final String? otp;
  @override
  final Token? accessToken;
  @override
  final Token? refreshToken;
  @override
  final Token? expiredToken;
  @override
  final Verification? verification;
  @override
  final Auth? auth;
  @override
  final String? error;
  @override
  final Option<Either<AuthFailure, dynamic>> authOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(isLoading: $isLoading, isError: $isError, isTokenExpired: $isTokenExpired, countryCode: $countryCode, phone: $phone, otp: $otp, accessToken: $accessToken, refreshToken: $refreshToken, expiredToken: $expiredToken, verification: $verification, auth: $auth, error: $error, authOption: $authOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('isTokenExpired', isTokenExpired))
      ..add(DiagnosticsProperty('countryCode', countryCode))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('otp', otp))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('refreshToken', refreshToken))
      ..add(DiagnosticsProperty('expiredToken', expiredToken))
      ..add(DiagnosticsProperty('verification', verification))
      ..add(DiagnosticsProperty('auth', auth))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('authOption', authOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isTokenExpired, isTokenExpired) ||
                other.isTokenExpired == isTokenExpired) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiredToken, expiredToken) ||
                other.expiredToken == expiredToken) &&
            (identical(other.verification, verification) ||
                other.verification == verification) &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.authOption, authOption) ||
                other.authOption == authOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      isTokenExpired,
      countryCode,
      phone,
      otp,
      accessToken,
      refreshToken,
      expiredToken,
      verification,
      auth,
      error,
      authOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
          {required final bool isLoading,
          required final bool isError,
          required final bool isTokenExpired,
          required final String? countryCode,
          required final String? phone,
          required final String? otp,
          required final Token? accessToken,
          required final Token? refreshToken,
          required final Token? expiredToken,
          required final Verification? verification,
          required final Auth? auth,
          required final String? error,
          required final Option<Either<AuthFailure, dynamic>> authOption}) =
      _$_AuthState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isTokenExpired;
  @override
  String? get countryCode;
  @override
  String? get phone;
  @override
  String? get otp;
  @override
  Token? get accessToken;
  @override
  Token? get refreshToken;
  @override
  Token? get expiredToken;
  @override
  Verification? get verification;
  @override
  Auth? get auth;
  @override
  String? get error;
  @override
  Option<Either<AuthFailure, dynamic>> get authOption;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
