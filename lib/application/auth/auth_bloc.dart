import 'package:chateo/domain/auth/auth.dart';
import 'package:chateo/domain/auth/i_auth_repo.dart';
import 'package:chateo/domain/core/constants.dart';
import 'package:chateo/domain/failures/auth/auth_failure.dart';
import 'package:chateo/domain/token/token.dart';
import 'package:chateo/domain/user/user.dart';
import 'package:chateo/domain/verification/verification.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

// ignore: unused_element
AuthEvent? _refreshEvent;

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
              isLoading: true,
              isError: false,
              error: null,
              verification: null,
              authOption: none(),
            ),
          );

          final Either<AuthFailure, Verification> verifyOption =
              await _authRepo.verifyPhone(state.countryCode, state.phone);

          verifyOption.fold(
            (l) {
              emit(
                l.map(
                  clientFailure: (value) {
                    return state.copyWith(
                      isLoading: false,
                      isError: true,
                      error: value.message,
                      authOption: some(left(l)),
                    );
                  },
                  serverFailure: (value) {
                    return state.copyWith(
                      isLoading: false,
                      isError: true,
                      error: value.message,
                      authOption: some(left(l)),
                    );
                  },
                  tokenFailure: (value) {
                    return state;
                  },
                ),
              );
            },
            (r) {
              emit(
                state.copyWith(
                  isLoading: false,
                  isError: false,
                  error: null,
                  verification: r,
                  authOption: some(right(r)),
                ),
              );
            },
          );
        },
        otpChanged: (_OtpChanged value) {
          emit(
            state.copyWith(
              otp: value.otp,
            ),
          );
        },
        verifyOtp: (_VerifyOtp value) async {
          emit(
            state.copyWith(
              isLoading: true,
              isError: false,
              error: null,
              auth: null,
              authOption: none(),
            ),
          );

          final Either<AuthFailure, Auth> verifyOption =
              await _authRepo.verifyOtp(
            state.countryCode,
            state.phone,
            state.otp,
          );

          verifyOption.fold(
            (l) {
              emit(
                l.map(
                  clientFailure: (value) {
                    return state.copyWith(
                      isLoading: false,
                      isError: true,
                      error: value.message,
                      otp: null,
                      authOption: some(left(l)),
                    );
                  },
                  serverFailure: (value) {
                    return state.copyWith(
                      isLoading: false,
                      isError: true,
                      error: value.message,
                      otp: null,
                      authOption: some(left(l)),
                    );
                  },
                  tokenFailure: (value) {
                    return state;
                  },
                ),
              );
            },
            (r) {
              emit(
                state.copyWith(
                  isLoading: false,
                  isError: false,
                  error: null,
                  accessToken: Token(
                    role: Roles.user,
                    token: r.accessToken,
                    type: TokenType.accessToken,
                  ),
                  refreshToken: Token(
                    role: Roles.user,
                    token: r.refreshToken,
                    type: TokenType.refreshToken,
                  ),
                  verification: state.verification?.copyWith(
                    status: 'approved',
                  ),
                  auth: r,
                  authOption: some(right(r)),
                ),
              );

              add(AuthEvent.saveToken('accessToken', state.accessToken));
              add(AuthEvent.saveToken('refreshToken', state.refreshToken));
            },
          );
        },
        saveToken: (_SaveToken value) async {
          emit(
            state.copyWith(
              isError: false,
              isTokenExpired: false,
              error: null,
              authOption: none(),
            ),
          );

          if (state.accessToken?.token != null &&
              state.accessToken!.token!.isNotEmpty) {
            final Either<AuthFailure, Token> tokenOption =
                await _authRepo.saveToken(
              value.key,
              value.token,
            );

            emit(
              tokenOption.fold(
                (l) {
                  return l.map(
                    serverFailure: (value) {
                      return state;
                    },
                    clientFailure: (value) {
                      return state.copyWith(
                        isError: true,
                        error: value.message,
                        authOption: some(left(l)),
                      );
                    },
                    tokenFailure: (value) {
                      return state;
                    },
                  );
                },
                (r) {
                  return state.copyWith(
                    isError: false,
                    authOption: some(right(r)),
                  );
                },
              ),
            );
          }
        },
        authenticate: (_Authenticate value) async {
          emit(state.copyWith(
            isLoading: true,
            isError: false,
            isTokenExpired: false,
            expiredToken: null,
            error: null,
            authOption: none(),
          ));

          final Either<AuthFailure, User> authOption =
              await _authRepo.authenticate();

          authOption.fold(
            (l) {
              l.map(
                serverFailure: (value) {
                  emit(
                    state.copyWith(
                      isLoading: false,
                      isError: true,
                      isTokenExpired: false,
                      error: value.message,
                      authOption: some(left(l)),
                    ),
                  );
                },
                clientFailure: (value) {
                  emit(
                    state.copyWith(
                      isLoading: false,
                      isError: true,
                      isTokenExpired: false,
                      error: value.message,
                      authOption: some(left(l)),
                    ),
                  );
                },
                tokenFailure: (value) {
                  emit(
                    state.copyWith(
                      isLoading: false,
                      isError: false,
                      isTokenExpired: true,
                      expiredToken: value.token,
                      authOption: some(left(l)),
                    ),
                  );

                  _refreshEvent = const AuthEvent.authenticate();
                  add(const AuthEvent.refreshToken());
                },
              );
            },
            (r) {
              emit(
                state.copyWith(
                  isLoading: false,
                  isError: false,
                  isTokenExpired: false,
                  auth: Auth(
                    accessToken: state.accessToken?.token,
                    refreshToken: state.refreshToken?.token,
                    user: r,
                  ),
                  authOption: some(right(r)),
                ),
              );
            },
          );
        },
        refreshToken: (_RefreshToken value) async {
          emit(
            state.copyWith(
              isLoading: true,
              isError: false,
              isTokenExpired: false,
              expiredToken: null,
              error: null,
              authOption: none(),
            ),
          );

          final Either<AuthFailure, Token> refreshOption =
              await _authRepo.refreshToken();

          refreshOption.fold(
            (l) {
              emit(
                l.map(
                  serverFailure: (value) {
                    return state.copyWith(
                      isLoading: false,
                      isError: true,
                      isTokenExpired: false,
                      error: value.message,
                      authOption: some(left(l)),
                    );
                  },
                  clientFailure: (value) {
                    return state.copyWith(
                      isLoading: false,
                      isError: true,
                      isTokenExpired: false,
                      error: value.message,
                      authOption: some(left(l)),
                    );
                  },
                  tokenFailure: (value) {
                    return state.copyWith(
                      isLoading: false,
                      isError: false,
                      isTokenExpired: true,
                      expiredToken: value.token,
                      authOption: some(left(l)),
                    );
                  },
                ),
              );
            },
            (r) {
              emit(
                state.copyWith(
                  isLoading: false,
                  isError: false,
                  isTokenExpired: false,
                  accessToken: r,
                  authOption: some(right(r)),
                ),
              );

              add(AuthEvent.saveToken('accessToken', r));
              if (_refreshEvent != null) {
                add(_refreshEvent!);
              }
            },
          );
        },
        firstNameChanged: (_FirstNameChanged value) {
          emit(
            state.copyWith(firstName: value.firstName),
          );
        },
        lastNameChanged: (_LastNameChanged value) {
          emit(
            state.copyWith(
              lastName: value.lastName,
            ),
          );
        },
        completeProfile: (_CompleteProfile value) async {
          emit(
            state.copyWith(
              isLoading: true,
              isError: false,
              isTokenExpired: false,
              expiredToken: null,
              error: null,
              authOption: none(),
            ),
          );

          final Either<AuthFailure, User> profileOption =
              await _authRepo.completeProfile(
            state.firstName,
            state.lastName,
          );

          profileOption.fold(
            (l) {
              l.map(
                clientFailure: (value) {
                  return state.copyWith(
                    isLoading: false,
                    isError: true,
                    isTokenExpired: false,
                    error: value.message,
                    authOption: some(left(l)),
                  );
                },
                serverFailure: (value) {
                  return state.copyWith(
                    isLoading: false,
                    isError: true,
                    isTokenExpired: false,
                    error: value.message,
                    authOption: some(left(l)),
                  );
                },
                tokenFailure: (value) {
                  emit(
                    state.copyWith(
                      isLoading: false,
                      isError: false,
                      isTokenExpired: true,
                      expiredToken: value.token,
                      authOption: some(left(l)),
                    ),
                  );

                  _refreshEvent = const AuthEvent.completeProfile();
                  add(const AuthEvent.refreshToken());
                },
              );
            },
            (r) {
              emit(
                state.copyWith(
                  isLoading: false,
                  isError: false,
                  isTokenExpired: false,
                  error: null,
                  auth: Auth(
                    accessToken: state.accessToken?.token,
                    refreshToken: state.refreshToken?.token,
                    user: r,
                  ),
                  authOption: some(right(r)),
                ),
              );
            },
          );
        },
      );
      print(state.toString());
    });
  }
}
