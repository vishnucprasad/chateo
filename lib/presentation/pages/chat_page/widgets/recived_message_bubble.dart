import 'package:chateo/core/colors.dart';
import 'package:chateo/presentation/pages/chat_page/widgets/bubble_shape.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class RecivedMessageBubble extends StatelessWidget {
  const RecivedMessageBubble({
    super.key,
    required this.message,
    this.mentionedMessage,
    this.mentionedIndex,
    this.scrollController,
  });

  final String message;
  final String? mentionedMessage;
  final int? mentionedIndex;
  final ItemScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    final Brightness currentBrightness =
        MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = currentBrightness == Brightness.dark;
    final messageText = Theme.of(context).textTheme.titleMedium;
    final mentionedMessageText = Theme.of(context).textTheme.titleSmall;

    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 18.0, top: 15, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const SizedBox(height: 30),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: CustomPaint(
                    painter: BubbleShape(
                      bgColor:
                          isDarkMode ? secondaryDarkColor : secondaryLightColor,
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          isDarkMode ? secondaryDarkColor : secondaryLightColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                    ),
                    child: Column(
                      children: [
                        if (mentionedMessage != null &&
                            mentionedIndex != null &&
                            scrollController != null)
                          GestureDetector(
                            onTap: () {
                              scrollController?.scrollTo(
                                index: mentionedIndex!,
                                duration: const Duration(milliseconds: 100),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 8,
                                right: 8,
                                top: 8,
                              ),
                              height: 60,
                              decoration: BoxDecoration(
                                color: isDarkMode ? darkColor : lightColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ListTile(
                                title: Text(
                                  mentionedMessage!,
                                  style: mentionedMessageText,
                                ),
                              ),
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(14),
                          child: Text(
                            message,
                            style: messageText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
