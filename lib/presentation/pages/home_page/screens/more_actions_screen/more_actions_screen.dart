import 'package:chateo/core/constants.dart';
import 'package:chateo/presentation/pages/home_page/screens/more_actions_screen/widgets/account_section.dart';
import 'package:chateo/presentation/pages/home_page/screens/more_actions_screen/widgets/settings_list.dart';
import 'package:flutter/material.dart';

class MoreActionsScreen extends StatelessWidget {
  const MoreActionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle? titleText = Theme.of(context).textTheme.titleLarge;

    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight20,
                Text(
                  'More',
                  style: titleText,
                ),
                kHeight30,
                const AccountSection(),
              ],
            ),
          ),
          kHeight50,
          const SettingsList(),
        ],
      ),
    );
  }
}
