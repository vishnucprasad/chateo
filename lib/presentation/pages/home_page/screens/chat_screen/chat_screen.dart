import 'package:chateo/presentation/core/colors.dart';
import 'package:chateo/presentation/core/constants.dart';
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
                                    image: NetworkImage(
                                        'https://instagram.fcok10-1.fna.fbcdn.net/v/t51.2885-15/338388018_2201060350084178_5289291198886151654_n.webp?stp=dst-jpg_e35_p640x640_sh0.08&_nc_ht=instagram.fcok10-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=QaR-ma0dUMAAX_6qhpE&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=MzA2OTkyMDIyNTE3MzI0OTc1Mw%3D%3D.2-ccb7-5&oh=00_AfBX75G0C4reNXzb27vmp-WizLwpsaAySrPoeiQsxSAneg&oe=643D8CCE&_nc_sid=30a2ef')),
                              ),
                            ),
                          ),
                          kHeight,
                          const Text(
                            'Megha mol',
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
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://instagram.fcok10-1.fna.fbcdn.net/v/t51.2885-15/338388018_2201060350084178_5289291198886151654_n.webp?stp=dst-jpg_e35_p640x640_sh0.08&_nc_ht=instagram.fcok10-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=QaR-ma0dUMAAX_6qhpE&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=MzA2OTkyMDIyNTE3MzI0OTc1Mw%3D%3D.2-ccb7-5&oh=00_AfBX75G0C4reNXzb27vmp-WizLwpsaAySrPoeiQsxSAneg&oe=643D8CCE&_nc_sid=30a2ef'),
                        ),
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Megha Mol'),
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
