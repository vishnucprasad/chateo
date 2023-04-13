import 'package:chateo/presentation/core/colors.dart';
import 'package:chateo/presentation/pages/home_page/screens/chat_screen/chat_screen.dart';
import 'package:chateo/presentation/pages/home_page/screens/contacts_screen/contacts_screen.dart';
import 'package:chateo/presentation/pages/home_page/screens/more_actions_screen/more_actions_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle? titleText = Theme.of(context)
        .textTheme
        .titleMedium
        ?.copyWith(fontWeight: FontWeight.bold);
    final ValueNotifier indexNotifier = ValueNotifier(0);
    const List<Widget> screensList = [
      ContactsScreen(),
      ChatScreen(),
      MoreActionsScreen(),
    ];

    return ValueListenableBuilder(
      valueListenable: indexNotifier,
      builder: (BuildContext context, dynamic value, Widget? child) {
        return Scaffold(
          body: screensList[value],
          bottomNavigationBar: Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {
                    indexNotifier.value = 0;
                  },
                  child: indexNotifier.value == 0
                      ? Text(
                          'Contacts',
                          style: titleText,
                        )
                      : const Icon(
                          Icons.people_alt_outlined,
                          size: 30,
                        ),
                ),
                MaterialButton(
                  onPressed: () {
                    indexNotifier.value = 1;
                  },
                  child: indexNotifier.value == 1
                      ? Text(
                          'Chats',
                          style: titleText,
                        )
                      : const Icon(
                          CupertinoIcons.chat_bubble,
                          size: 30,
                        ),
                ),
                MaterialButton(
                  onPressed: () {
                    indexNotifier.value = 2;
                  },
                  child: indexNotifier.value == 2
                      ? Text(
                          'More',
                          style: titleText,
                        )
                      : const Icon(
                          Icons.more_horiz,
                          size: 30,
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
