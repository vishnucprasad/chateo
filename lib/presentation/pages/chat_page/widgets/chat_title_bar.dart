import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ChatTitleBar extends StatelessWidget {
  const ChatTitleBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle? titleText = Theme.of(context).textTheme.titleMedium;
    final TextStyle? subTitleText = Theme.of(context).textTheme.titleSmall;

    return ListTile(
      leading: IconButton(
        onPressed: () {
          context.router.pop();
        },
        icon: const Icon(
          Icons.chevron_left,
          size: 36,
        ),
      ),
      title: Text(
        "Chateo user",
        overflow: TextOverflow.ellipsis,
        style: titleText?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        "typing...",
        style: subTitleText?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
            ),
          ),
        ],
      ),
    );
  }
}
