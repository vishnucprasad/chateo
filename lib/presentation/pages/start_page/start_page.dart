import 'package:chateo/presentation/core/colors.dart';
import 'package:chateo/presentation/core/constants.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    Brightness currentBrightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = currentBrightness == Brightness.dark;
    TextStyle? headLine = Theme.of(context).textTheme.headlineSmall;
    TextStyle? titleMedium = Theme.of(context).textTheme.titleMedium;
    TextStyle? titleLarge = Theme.of(context).textTheme.titleLarge;

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
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 40,
                ),
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'Start Messaging',
                    style: titleLarge?.copyWith(
                      color: lightColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
