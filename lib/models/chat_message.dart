import '../utils/user_preferences.dart';

class ChatMessage {
  final UserPreferences userProfile;
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
