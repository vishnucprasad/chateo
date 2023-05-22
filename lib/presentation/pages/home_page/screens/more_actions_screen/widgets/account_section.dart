import 'package:chateo/core/colors.dart';
import 'package:chateo/core/constants.dart';
import 'package:flutter/material.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Brightness currentBrightness =
        MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = currentBrightness == Brightness.dark;
    final TextStyle? titleTextMedium = Theme.of(context).textTheme.titleMedium;
    final TextStyle? titleTextSmall = Theme.of(context).textTheme.titleSmall;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        kWidth,
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/blank-avatar.jpg',
              ),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        kWidth20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vishnu C Prasad',
              style: titleTextMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight5,
            Text(
              '+91 8157983670',
              style: titleTextSmall?.copyWith(
                color: isDarkMode ? greyColor : secondaryDarkColor,
              ),
            ),
            kHeight5,
          ],
        ),
        const Spacer(),
        const SizedBox(
          height: 50,
          child: Icon(
            Icons.arrow_forward_ios_sharp,
            size: 16,
          ),
        ),
        kWidth,
      ],
    );
  }
}
