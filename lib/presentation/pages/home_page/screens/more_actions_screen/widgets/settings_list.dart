import 'package:chateo/core/constants.dart';
import 'package:chateo/presentation/pages/home_page/screens/more_actions_screen/widgets/settings_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          SettingsItem(
            icon: CupertinoIcons.person,
            text: 'Account',
          ),
          SettingsItem(
            icon: CupertinoIcons.chat_bubble,
            text: 'Chats',
          ),
          kHeight30,
          SettingsItem(
            icon: CupertinoIcons.brightness,
            text: 'Appereance',
          ),
          SettingsItem(
            icon: CupertinoIcons.bell,
            text: 'Notification',
          ),
          SettingsItem(
            icon: CupertinoIcons.exclamationmark_shield,
            text: 'Privacy',
          ),
          SettingsItem(
            icon: CupertinoIcons.folder,
            text: 'Data Usage',
          ),
          SettingsItem(
            icon: CupertinoIcons.question_circle,
            text: 'Help',
          ),
        ],
      ),
    );
  }
}
