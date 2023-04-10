import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class CountryCodeSelector extends StatelessWidget {
  const CountryCodeSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Brightness currentBrightness =
        MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = currentBrightness == Brightness.dark;
    final TextStyle? titleSmall = Theme.of(context).textTheme.titleSmall;

    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: isDarkMode ? secondaryDarkColor : secondaryLightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: CountryCodePicker(
        onChanged: print,
        initialSelection: 'IN',
        favorite: const ['+91', 'IN'],
        showCountryOnly: true,
        showOnlyCountryWhenClosed: false,
        alignLeft: false,
        textStyle: titleSmall?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: lightColor,
        dialogBackgroundColor:
            isDarkMode ? secondaryDarkColor : secondaryLightColor,
        barrierColor: isDarkMode ? darkColor : lightColor,
      ),
    );
  }
}
