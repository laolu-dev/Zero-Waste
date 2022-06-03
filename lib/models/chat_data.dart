import 'dart:collection';
import 'package:flutter/material.dart';
import '../utils/user_preferences.dart';
import 'chat_message.dart';

class ChatData extends ChangeNotifier {
  final List<ChatMessage> _chatMessage = [];

  void addChatMessage(UserPreferences userProfile, String messageContent,
      bool isMe, bool isMessage) {
    _chatMessage.add(ChatMessage(
        userProfile: userProfile,
        messageContent: messageContent,
        isMe: isMe,
        isMessage: isMessage));
    notifyListeners();
  }

  UnmodifiableListView<ChatMessage> get chatMessage =>
      UnmodifiableListView(_chatMessage);

  UserPreferences getChatSender(int index) => _chatMessage[index].userProfile;

  String getChatMessage(int index) => _chatMessage[index].messageContent;

  bool checkCurrentUser(int index) => _chatMessage[index].isMe;

  bool checkMessageType(int index) => _chatMessage[index].isMessage;

  int get length => _chatMessage.length;
}
