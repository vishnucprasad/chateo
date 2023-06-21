import 'package:flutter/material.dart';

class MessageInputField extends StatelessWidget {
  const MessageInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.add),
      ),
      title: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 25.0,
          maxHeight: 135.0,
        ),
        child: const Scrollbar(
          child: TextField(
            cursorColor: Colors.red,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                  top: 2.0, left: 13.0, right: 13.0, bottom: 2.0),
              hintText: "Message",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.send),
      ),
    );
  }
}
