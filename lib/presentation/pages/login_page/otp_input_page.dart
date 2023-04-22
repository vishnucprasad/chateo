import 'package:auto_route/auto_route.dart';
import 'package:chateo/application/auth/auth_bloc.dart';
import 'package:chateo/core/constants.dart';
import 'package:chateo/presentation/pages/login_page/widgets/number_keyboard.dart';
import 'package:chateo/presentation/pages/login_page/widgets/otp_input_field.dart';
import 'package:chateo/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class OtpInputPage extends StatelessWidget {
  const OtpInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness currentBrightness =
        MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = currentBrightness == Brightness.dark;
    final TextStyle? headLine = Theme.of(context).textTheme.headlineSmall;
    final TextStyle? titleText = Theme.of(context).textTheme.titleMedium;
    final TextEditingController pinController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: BlocConsumer<AuthBloc, AuthState>(
            listenWhen: (previous, current) =>
                previous.auth != current.auth ||
                current.error != previous.error,
            listener: (context, state) {
              if (state.isError == false &&
                  state.verification?.status == 'approved') {
                context.router.replaceAll([
                  const StartRoute(),
                  const ProfileCompletionRoute(),
                ]);
              }

              if (state.isError && state.error != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  showErrorSnackBar(
                    errorMessage: state.error,
                    isDarkMode: isDarkMode,
                  ),
                );
                pinController.clear();
              }
            },
            builder: (context, state) {
              return Column(
                children: [
                  const Spacer(),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 60),
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          kHeight50,
                          Text(
                            'Enter Code',
                            style: headLine?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          kHeight,
                          Text(
                            'We have sent you an SMS with the code \n to ${state.verification?.to}',
                            style: const TextStyle(
                              height: 2,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          kHeight30,
                          OtpInputField(
                            controller: pinController,
                          ),
                          kHeight50,
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend Code',
                        style: titleText?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  NumberKeyboard(
                    onKeyPressed: (value) {
                      pinController.append(value, 4);
                    },
                    onBackspacePressed: () {
                      pinController.delete();
                    },
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
