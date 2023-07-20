import 'package:flutter/material.dart';
import '../../../models/chat_message.dart';

final _mockData = [ChatMessage(messageContent: 'Demo', fromMe: true)];

class ChatData extends ChangeNotifier {
  final List<ChatMessage> _chatMessage = _mockData;

  List<ChatMessage> get chatMessage => _chatMessage;

  void addChatMessage(String messageContent, bool isMe, bool isMessage) {
    _chatMessage.add(
      ChatMessage(
        messageContent: messageContent,
        fromMe: false,
      ),
    );
    notifyListeners();
  }

  int get length => _chatMessage.length;
}
