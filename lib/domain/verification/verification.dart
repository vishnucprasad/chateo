import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification.freezed.dart';
part 'verification.g.dart';

@freezed
class Verification with _$Verification {
  const factory Verification({
    required String? sid,
    required String? to,
    required String? status,
  }) = _Verification;

  factory Verification.fromJson(Map<String, dynamic> json) =>
      _$VerificationFromJson(json);
}
