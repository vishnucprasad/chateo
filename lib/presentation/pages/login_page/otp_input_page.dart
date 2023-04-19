import 'package:chateo/core/constants.dart';
import 'package:chateo/presentation/pages/login_page/widgets/number_keyboard.dart';
import 'package:chateo/presentation/pages/login_page/widgets/otp_input_field.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpInputPage extends StatelessWidget {
  const OtpInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle? headLine = Theme.of(context).textTheme.headlineSmall;
    final TextStyle? titleText = Theme.of(context).textTheme.titleMedium;
    final TextEditingController pinController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
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
                      const Text(
                        'We have sent you an SMS with the code \n to +62 1309 - 1710 - 1920',
                        style: TextStyle(
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
          ),
        ),
      ),
    );
  }
}
