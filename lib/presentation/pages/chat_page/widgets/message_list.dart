import 'package:chateo/presentation/pages/chat_page/widgets/recived_message_bubble.dart';
import 'package:chateo/presentation/pages/chat_page/widgets/send_message_bubble.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MessageList extends StatelessWidget {
  const MessageList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ItemScrollController scrollController = ItemScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.jumpTo(index: 19);
    });

    return Expanded(
      child: ScrollablePositionedList.builder(
        itemScrollController: scrollController,
        itemBuilder: (BuildContext ctx, int index) {
          if (index == 15) {
            return SendMessageBubble(
              message:
                  "Hello world This is a test message for the developemnet purposes!",
              mentionedMessage:
                  "Hello world This is a test message for the developemnet purposes!",
              mentionedIndex: 2,
              scrollController: scrollController,
            );
          }

          if (index == 18) {
            return RecivedMessageBubble(
              message:
                  "Hello world This is a test message for the developemnet purposes!",
              mentionedMessage:
                  "Hello world This is a test message for the developemnet purposes!",
              mentionedIndex: 3,
              scrollController: scrollController,
            );
          }

          if (index % 2 == 0) {
            return const RecivedMessageBubble(
              message:
                  "Hello world This is a test message for the developemnet purposes!",
            );
          }

          return const SendMessageBubble(
            message:
                "Hello world This is a test message for the developemnet purposes!",
          );
        },
        itemCount: 20,
      ),
    );
  }
}
