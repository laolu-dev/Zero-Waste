import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:zero_waste/features/chats/presentation/screens/new_conversation_screen.dart';
import '../../../../core/constants/styles/colors.dart';


class ChatIcon extends StatelessWidget {
  const ChatIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Chat',
      backgroundColor: AppColors.primary.withOpacity(.5),
      onPressed: () =>
          pushNewScreen(context, screen: const NewConversationScreen()),
      child: const Center(
        child: Icon(Icons.chat, size: 25),
      ),
    );
  }
}
