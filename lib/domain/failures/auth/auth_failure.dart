import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverFailure(String message) = _ServerFailure;
  const factory AuthFailure.clientFailure(String message) = _ClientFailure;
}
