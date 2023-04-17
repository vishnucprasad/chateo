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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String? countryCode)? countryCodeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String? countryCode)? countryCodeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
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
  }) {
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String? countryCode)? countryCodeChanged,
  }) {
    return phoneChanged?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String? countryCode)? countryCodeChanged,
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
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
  }) {
    return phoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
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
  }) {
    return countryCodeChanged(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String? countryCode)? countryCodeChanged,
  }) {
    return countryCodeChanged?.call(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String? countryCode)? countryCodeChanged,
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
  }) {
    return countryCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
  }) {
    return countryCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
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
mixin _$AuthState {
  bool get isLoadig => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  Auth? get auth => throw _privateConstructorUsedError;
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
      {bool isLoadig,
      bool isError,
      String? countryCode,
      String? phone,
      String? otp,
      Auth? auth,
      Option<Either<AuthFailure, dynamic>> authOption});

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
    Object? isLoadig = null,
    Object? isError = null,
    Object? countryCode = freezed,
    Object? phone = freezed,
    Object? otp = freezed,
    Object? auth = freezed,
    Object? authOption = null,
  }) {
    return _then(_value.copyWith(
      isLoadig: null == isLoadig
          ? _value.isLoadig
          : isLoadig // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
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
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth?,
      authOption: null == authOption
          ? _value.authOption
          : authOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, dynamic>>,
    ) as $Val);
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
      {bool isLoadig,
      bool isError,
      String? countryCode,
      String? phone,
      String? otp,
      Auth? auth,
      Option<Either<AuthFailure, dynamic>> authOption});

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
    Object? isLoadig = null,
    Object? isError = null,
    Object? countryCode = freezed,
    Object? phone = freezed,
    Object? otp = freezed,
    Object? auth = freezed,
    Object? authOption = null,
  }) {
    return _then(_$_AuthState(
      isLoadig: null == isLoadig
          ? _value.isLoadig
          : isLoadig // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
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
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth?,
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
      {required this.isLoadig,
      required this.isError,
      required this.countryCode,
      required this.phone,
      required this.otp,
      required this.auth,
      required this.authOption});

  @override
  final bool isLoadig;
  @override
  final bool isError;
  @override
  final String? countryCode;
  @override
  final String? phone;
  @override
  final String? otp;
  @override
  final Auth? auth;
  @override
  final Option<Either<AuthFailure, dynamic>> authOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(isLoadig: $isLoadig, isError: $isError, countryCode: $countryCode, phone: $phone, otp: $otp, auth: $auth, authOption: $authOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('isLoadig', isLoadig))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('countryCode', countryCode))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('otp', otp))
      ..add(DiagnosticsProperty('auth', auth))
      ..add(DiagnosticsProperty('authOption', authOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isLoadig, isLoadig) ||
                other.isLoadig == isLoadig) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.authOption, authOption) ||
                other.authOption == authOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoadig, isError, countryCode,
      phone, otp, auth, authOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
          {required final bool isLoadig,
          required final bool isError,
          required final String? countryCode,
          required final String? phone,
          required final String? otp,
          required final Auth? auth,
          required final Option<Either<AuthFailure, dynamic>> authOption}) =
      _$_AuthState;

  @override
  bool get isLoadig;
  @override
  bool get isError;
  @override
  String? get countryCode;
  @override
  String? get phone;
  @override
  String? get otp;
  @override
  Auth? get auth;
  @override
  Option<Either<AuthFailure, dynamic>> get authOption;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
