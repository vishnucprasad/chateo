import 'package:chateo/core/colors.dart';
import 'package:chateo/core/constants.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness currentBrightness =
        MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = currentBrightness == Brightness.dark;
    final TextStyle? titleText = Theme.of(context).textTheme.titleLarge;

    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                kHeight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Contacts',
                      style: titleText,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.refresh),
                    ),
                  ],
                ),
                kHeight30,
                SizedBox(
                  height: 40,
                  child: TextFormField(
                    cursorColor: isDarkMode ? lightColor : greyColor,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: isDarkMode ? lightColor : greyColor,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: isDarkMode ? lightColor : greyColor,
                        height: 0.8,
                      ),
                      filled: true,
                      fillColor:
                          isDarkMode ? secondaryDarkColor : secondaryLightColor,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                kHeight20,
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/blank-avatar.jpg',
                          ),
                        ),
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Chateo User'),
                        kHeight,
                      ],
                    ),
                    subtitle: const Text('Last seen yesterday'),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
                itemCount: 10),
          ),
        ],
      ),
    );
  }
}
