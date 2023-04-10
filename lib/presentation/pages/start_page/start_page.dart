import 'package:auto_route/auto_route.dart';
import 'package:chateo/presentation/core/constants.dart';
import 'package:chateo/presentation/router/app_router.gr.dart';
import 'package:chateo/presentation/widgets/large_button.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness currentBrightness =
        MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = currentBrightness == Brightness.dark;
    final TextStyle? headLine = Theme.of(context).textTheme.headlineSmall;
    final TextStyle? titleMedium = Theme.of(context).textTheme.titleMedium;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      isDarkMode
                          ? "assets/images/dark.png"
                          : "assets/images/light.png",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "Connect easily with \n your family and friends \n over countries",
                  style: headLine?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              Text(
                'Terms & Privacy Policy',
                style: titleMedium,
              ),
              kHeight20,
              LargeButton(
                text: 'Start Messaging',
                onPressed: () {
                  context.router.push(const PhoneNumberRoute());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
