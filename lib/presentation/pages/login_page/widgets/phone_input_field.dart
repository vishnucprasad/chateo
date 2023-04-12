import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class PhoneInputField extends StatelessWidget {
  const PhoneInputField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final Brightness currentBrightness =
        MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = currentBrightness == Brightness.dark;
    final TextStyle? titleSmall = Theme.of(context).textTheme.titleSmall;

    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: controller,
        readOnly: true,
        decoration: InputDecoration(
          hintText: 'Phone Number',
          hintStyle: titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: isDarkMode ? lightColor : greyColor),
          filled: true,
          fillColor: isDarkMode ? secondaryDarkColor : secondaryLightColor,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
