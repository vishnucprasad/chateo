import 'package:auto_route/auto_route.dart';
import 'package:chateo/application/auth/auth_bloc.dart';
import 'package:chateo/core/colors.dart';
import 'package:chateo/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class OtpInputField extends StatelessWidget {
  const OtpInputField({
    required this.controller,
    super.key,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final Brightness currentBrightness =
        MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = currentBrightness == Brightness.dark;

    return Pinput(
      defaultPinTheme: PinTheme(
        width: 26,
        height: 26,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: isDarkMode ? secondaryDarkColor : secondaryLightColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      submittedPinTheme: PinTheme(
        width: 56,
        height: 56,
        textStyle: TextStyle(
          fontSize: 36,
          color: isDarkMode ? lightColor : darkColor,
          fontWeight: FontWeight.w600,
        ),
        decoration: BoxDecoration(
          color: isDarkMode ? darkColor : lightColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      controller: controller,
      onChanged: (value) {
        context.read<AuthBloc>().add(AuthEvent.otpChanged(value));
      },
      readOnly: true,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      validator: (pin) {
        context.read<AuthBloc>().add(const AuthEvent.verifyOtp());

        return null;
      },
    );
  }
}
