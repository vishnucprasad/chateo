import 'package:auto_route/auto_route.dart';
import 'package:chateo/core/colors.dart';
import 'package:chateo/core/constants.dart';
import 'package:chateo/presentation/router/app_router.gr.dart';
import 'package:chateo/presentation/widgets/large_button.dart';
import 'package:flutter/material.dart';

class ProfileCompletionPage extends StatelessWidget {
  const ProfileCompletionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness currentBrightness =
        MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = currentBrightness == Brightness.dark;
    final TextStyle? titleText = Theme.of(context).textTheme.titleLarge;
    final TextStyle? titleSmall = Theme.of(context).textTheme.titleSmall;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  kHeight20,
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Your Profile",
                      style: titleText?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  kHeight50,
                  SizedBox(
                    height: 125,
                    width: 150,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 125,
                          backgroundColor: isDarkMode
                              ? secondaryDarkColor
                              : secondaryLightColor,
                          child: Icon(
                            Icons.person,
                            color: isDarkMode ? lightColor : darkColor,
                            size: 75,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_circle,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  kHeight50,
                  SizedBox(
                    height: 45,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'First Name ( Required )',
                        hintStyle: titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: isDarkMode ? lightColor : greyColor,
                        ),
                        filled: true,
                        fillColor: isDarkMode
                            ? secondaryDarkColor
                            : secondaryLightColor,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  kHeight20,
                  SizedBox(
                    height: 45,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Last Name ( Optional )',
                        hintStyle: titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: isDarkMode ? lightColor : greyColor,
                        ),
                        filled: true,
                        fillColor: isDarkMode
                            ? secondaryDarkColor
                            : secondaryLightColor,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            LargeButton(
              isLoadig: false,
              text: 'Save',
              onPressed: () {
                context.router.replaceAll([const HomeRoute()]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
