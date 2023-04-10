import 'package:chateo/presentation/core/constants.dart';
import 'package:chateo/presentation/pages/login_page/widgets/country_code_selector.dart';
import 'package:chateo/presentation/pages/login_page/widgets/number_keyboard.dart';
import 'package:chateo/presentation/pages/login_page/widgets/phone_input_field.dart';
import 'package:chateo/presentation/widgets/large_button.dart';
import 'package:flutter/material.dart';

class PhoneNumberPage extends StatelessWidget {
  const PhoneNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle? headLine = Theme.of(context).textTheme.headlineSmall;

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
                        children: const [
                          CountryCodeSelector(),
                          kWidth,
                          Expanded(
                            child: PhoneInputField(),
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
                onPressed: () {},
              ),
              NumberKeyboard(
                onKeyPressed: (value) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
