import 'package:auto_route/auto_route.dart';
import 'package:chateo/presentation/core/constants.dart';
import 'package:chateo/presentation/pages/login_page/widgets/country_code_selector.dart';
import 'package:chateo/presentation/pages/login_page/widgets/number_keyboard.dart';
import 'package:chateo/presentation/pages/login_page/widgets/phone_input_field.dart';
import 'package:chateo/presentation/router/app_router.gr.dart';
import 'package:chateo/presentation/widgets/large_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PhoneNumberPage extends StatelessWidget {
  const PhoneNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle? headLine = Theme.of(context).textTheme.headlineSmall;
    final TextEditingController controller = TextEditingController();

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
                        'Enter Your Phone Number',
                        style: headLine?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      kHeight,
                      const Text(
                        'Please confirm your country code and enter your phone number',
                        style: TextStyle(
                          height: 2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      kHeight30,
                      Row(
                        children: [
                          CountryCodeSelector(
                            onChanged: (CountryCode countryCode) {},
                          ),
                          kWidth,
                          Expanded(
                            child: PhoneInputField(
                              controller: controller,
                            ),
                          ),
                        ],
                      ),
                      kHeight50,
                    ],
                  ),
                ),
              ),
              const Spacer(),
              LargeButton(
                text: 'Continue',
                onPressed: () {
                  context.router.push(const OtpInputRoute());
                },
              ),
              NumberKeyboard(
                onKeyPressed: (value) {
                  controller.append(
                    value,
                    15,
                  );
                },
                onBackspacePressed: () {
                  controller.delete();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
