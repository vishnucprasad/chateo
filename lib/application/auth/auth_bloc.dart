import 'package:chateo/domain/auth/auth.dart';
import 'package:chateo/domain/failures/auth/auth_failure.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) {
      event.map(
        phoneChanged: (_PhoneChanged value) {
          emit(
            state.copyWith(
              phone: value.phone,
            ),
          );
        },
        countryCodeChanged: (_CountryCodeChanged value) {
          emit(
            state.copyWith(
              countryCode: value.countryCode,
            ),
          );
        },
      );
      print(state.toString());
    });
  }
}
