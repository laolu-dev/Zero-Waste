import 'package:flutter/material.dart';
import 'package:zero_waste/screens/profile_screen.dart';

class ChatMessage {
  final UserAccount userProfile;
  final String messageContent;
  final bool isMe;
  final bool isMessage;
  ChatMessage({
    required this.userProfile,
    required this.messageContent,
    required this.isMe,
    required this.isMessage,
  });
}
