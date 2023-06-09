import 'package:auto_route/auto_route.dart';
import 'package:chateo/core/colors.dart';
import 'package:chateo/core/constants.dart';
import 'package:chateo/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
                      'Chats',
                      style: titleText,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.chat_bubble_outline),
                    ),
                  ],
                ),
                kHeight,
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      kWidth,
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: isDarkMode ? lightColor : darkColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                          kHeight,
                          const Text(
                            'Your Story',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      kWidth20,
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  isDarkMode
                                      ? lightColor
                                      : primaryColor.withOpacity(0.3),
                                  primaryColor.withOpacity(0.75),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/blank-avatar.jpg',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          kHeight,
                          const Text(
                            'Chateo User',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
                    onTap: () {
                      context.router.push(const ChatRoute());
                    },
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
                    trailing: Column(
                      children: [
                        const Text('Today'),
                        kHeight,
                        Container(
                          height: 20,
                          width: 25,
                          decoration: BoxDecoration(
                            color: isDarkMode
                                ? secondaryLightColor
                                : secondaryDarkColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              '2',
                              style: TextStyle(
                                color: isDarkMode ? darkColor : lightColor,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
