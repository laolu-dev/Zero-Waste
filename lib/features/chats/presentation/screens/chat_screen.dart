import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/constants/styles/colors.dart';

import '../controller/chat_data.dart';
import '../widgets/chat_room_info.dart';
import '../widgets/message_bubble.dart';

class ChatScreen extends StatefulWidget {
  static const id = 'ChatScreen';
  final String name;
  final bool? onlineStatus;
  final String? profileUrl;
  const ChatScreen(
      {Key? key, required this.name, this.onlineStatus, this.profileUrl})
      : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late TextEditingController _text;

  @override
  void initState() {
    super.initState();
    _text = TextEditingController();
  }

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chat = Provider.of<ChatData>(context);
    _text.addListener(() {
      chat.showSend(_text.text);
    });
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back_ios,
                        color: Colors.black, size: 20.0),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ChatRoomInfo(
                      name: widget.name,
                      profileUrl: widget.profileUrl ?? AppConstants.dummyUser,
                      onlineStatus: widget.onlineStatus ?? false,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.search, size: 32),
                    padding: const EdgeInsets.all(4),
                    splashRadius: 25,
                  ),
                ],
              ),
            ),
            Divider(color: AppColors.primary, thickness: 1.2),
            Expanded(
              child: Consumer<ChatData>(
                builder: (context, chatData, child) => ListView.builder(
                  reverse: false,
                  itemBuilder: (context, index) {
                    final data = chatData.chatMessage[index];
                    return MessageBubble(
                      isMe: false,
                      messageContent: data.messageContent,
                    );
                  },
                  itemCount: chatData.length,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _text,
                        decoration: InputDecoration(
                          hintText: 'Send a message',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: chat.send
                          ? IconButton(
                              onPressed: () {
                                context
                                    .read<ChatData>()
                                    .addChatMessage(_text.text, true, false);
                                _text.clear();
                              },
                              icon: const Icon(Icons.send, color: Colors.green),
                              padding: const EdgeInsets.all(4),
                              splashRadius: 25,
                            )
                          : Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add),
                                  padding: const EdgeInsets.all(4),
                                  splashRadius: 25,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon:
                                      const Icon(Icons.emoji_emotions_outlined),
                                  padding: const EdgeInsets.all(4),
                                  splashRadius: 25,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mic),
                                  padding: const EdgeInsets.all(4),
                                  splashRadius: 25,
                                )
                              ],
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
