import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:zero_waste/utils/user_preferences.dart';

import '../models/chat_message.dart';

class ChatData extends ChangeNotifier {
  final List<ChatMessage> _chatMessage = [
    ChatMessage(
        userProfile: UserPreferences(),
        messageContent: '',
        isMe: true,
        isMessage: false),
    ChatMessage(
        userProfile: UserPreferences(),
        messageContent: '',
        isMe: true,
        isMessage: false),
    ChatMessage(
        userProfile: UserPreferences(),
        messageContent: '',
        isMe: true,
        isMessage: false),
  ];

  UnmodifiableListView<ChatMessage> get chatMessage =>
      UnmodifiableListView(_chatMessage);

  void addChatMessage(UserPreferences userProfile, String messageContent,
      bool isMe, bool isMessage) {
    _chatMessage.add(ChatMessage(
        userProfile: userProfile,
        messageContent: messageContent,
        isMe: isMe,
        isMessage: isMessage));
    notifyListeners();
  }

  int get length => _chatMessage.length;
}
