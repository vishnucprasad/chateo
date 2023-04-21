// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Verification _$VerificationFromJson(Map<String, dynamic> json) {
  return _Verification.fromJson(json);
}

/// @nodoc
mixin _$Verification {
  String? get sid => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationCopyWith<Verification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationCopyWith<$Res> {
  factory $VerificationCopyWith(
          Verification value, $Res Function(Verification) then) =
      _$VerificationCopyWithImpl<$Res, Verification>;
  @useResult
  $Res call({String? sid, String? to, String? status});
}

/// @nodoc
class _$VerificationCopyWithImpl<$Res, $Val extends Verification>
    implements $VerificationCopyWith<$Res> {
  _$VerificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sid = freezed,
    Object? to = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      sid: freezed == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerificationCopyWith<$Res>
    implements $VerificationCopyWith<$Res> {
  factory _$$_VerificationCopyWith(
          _$_Verification value, $Res Function(_$_Verification) then) =
      __$$_VerificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? sid, String? to, String? status});
}

/// @nodoc
class __$$_VerificationCopyWithImpl<$Res>
    extends _$VerificationCopyWithImpl<$Res, _$_Verification>
    implements _$$_VerificationCopyWith<$Res> {
  __$$_VerificationCopyWithImpl(
      _$_Verification _value, $Res Function(_$_Verification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sid = freezed,
    Object? to = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_Verification(
      sid: freezed == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Verification implements _Verification {
  const _$_Verification(
      {required this.sid, required this.to, required this.status});

  factory _$_Verification.fromJson(Map<String, dynamic> json) =>
      _$$_VerificationFromJson(json);

  @override
  final String? sid;
  @override
  final String? to;
  @override
  final String? status;

  @override
  String toString() {
    return 'Verification(sid: $sid, to: $to, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Verification &&
            (identical(other.sid, sid) || other.sid == sid) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sid, to, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerificationCopyWith<_$_Verification> get copyWith =>
      __$$_VerificationCopyWithImpl<_$_Verification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerificationToJson(
      this,
    );
  }
}

abstract class _Verification implements Verification {
  const factory _Verification(
      {required final String? sid,
      required final String? to,
      required final String? status}) = _$_Verification;

  factory _Verification.fromJson(Map<String, dynamic> json) =
      _$_Verification.fromJson;

  @override
  String? get sid;
  @override
  String? get to;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_VerificationCopyWith<_$_Verification> get copyWith =>
      throw _privateConstructorUsedError;
}
