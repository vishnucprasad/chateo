import 'package:chateo/domain/auth/auth.dart';
import 'package:chateo/domain/auth/i_auth_repo.dart';
import 'package:chateo/domain/failures/auth/auth_failure.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepo _authRepo;
  AuthBloc(this._authRepo) : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
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
        verifyPhone: (_VerifyPhone value) async {
          emit(
            state.copyWith(
              isLoadig: true,
            ),
          );

          final Either<AuthFailure, String> verifyOption =
              await _authRepo.verifyPhone(state.countryCode, state.phone);

          verifyOption.fold((l) {
            emit(
              l.map(
                clientFailure: (value) {
                  return state.copyWith(
                    isLoadig: false,
                    isError: true,
                    error: value.message,
                    authOption: some(left(l)),
                  );
                },
                serverFailure: (value) {
                  return state.copyWith(
                    isLoadig: false,
                    isError: true,
                    error: value.message,
                    authOption: some(left(l)),
                  );
                },
              ),
            );
          }, (r) {
            emit(
              state.copyWith(
                isLoadig: false,
                isError: false,
                error: null,
                authOption: some(right(r)),
              ),
            );
          });
        },
      );
      print(state.toString());
    });
  }
}
