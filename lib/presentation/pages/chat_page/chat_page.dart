import 'package:chateo/presentation/pages/chat_page/widgets/chat_title_bar.dart';
import 'package:chateo/presentation/pages/chat_page/widgets/message_input_field.dart';
import 'package:chateo/presentation/pages/chat_page/widgets/message_list.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            ChatTitleBar(),
            MessageList(),
            MessageInputField(),
          ],
        ),
      ),
    );
  }
}
