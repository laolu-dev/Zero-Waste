import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import '../../../utils/config/res.dart';

import '../../chats/screens/new_conversation_screen.dart';

class ChatIcon extends StatelessWidget {
  const ChatIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Chat',
      backgroundColor: Resources.color.primary.withOpacity(.5),
      onPressed: () =>
          pushNewScreen(context, screen: const NewConversationScreen()),
      child: const Center(
        child: Icon(Icons.chat, size: 25),
      ),
    );
  }
}
