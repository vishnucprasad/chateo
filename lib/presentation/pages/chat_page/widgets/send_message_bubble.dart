import 'package:chateo/core/colors.dart';
import 'package:chateo/presentation/pages/chat_page/widgets/bubble_shape.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SendMessageBubble extends StatelessWidget {
  const SendMessageBubble({
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
    final messageText = Theme.of(context).textTheme.titleMedium;
    final mentionedMessageText = Theme.of(context).textTheme.titleSmall;

    return Padding(
      padding: const EdgeInsets.only(right: 18.0, left: 50, top: 15, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const SizedBox(height: 30),
          Flexible(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
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
                              color: primaryColor.withGreen(85),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ListTile(
                              title: Text(
                                mentionedMessage!,
                                style: mentionedMessageText?.copyWith(
                                  color: lightColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Text(
                          message,
                          style: messageText?.copyWith(
                            color: lightColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomPaint(painter: BubbleShape(bgColor: primaryColor)),
            ],
          )),
        ],
      ),
    );
  }
}
