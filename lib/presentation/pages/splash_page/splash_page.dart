// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:chateo/application/auth/auth_bloc.dart';
import 'package:chateo/domain/core/constants.dart';
import 'package:chateo/domain/core/injection/injectable.dart';
import 'package:chateo/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3));

      final String? userType =
          getIt<SharedPreferences>().getString("auth_role");

      if (userType == null) {
        return context.router.replaceAll([const StartRoute()]);
      }

      if (userType == "user") {
        context.read<AuthBloc>().add(const AuthEvent.authenticate());
      }
    });
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.auth != current.auth ||
          previous.expiredToken != current.expiredToken,
      listener: (context, state) async {
        if (state.auth != null &&
            state.auth!.user != null &&
            !state.auth!.user!.isProfileCompleted) {
          return await context.router
              .replaceAll([const ProfileCompletionRoute()]);
        }

        if (state.auth != null &&
            state.auth!.user != null &&
            state.auth!.user!.isProfileCompleted) {
          return await context.router.replaceAll([const HomeRoute()]);
        }

        if (state.expiredToken != null &&
            state.expiredToken?.type == TokenType.refreshToken) {
          return await context.router.replaceAll([const StartRoute()]);
        }
      },
      child: Scaffold(
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/chateo.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
