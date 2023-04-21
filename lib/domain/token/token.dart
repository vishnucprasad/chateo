import 'package:chateo/domain/core/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';

@freezed
class Token with _$Token {
  const factory Token({
    required Roles? role,
    required String? token,
    required TokenType? type,
  }) = _Token;
}
