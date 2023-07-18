import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/app_theme.dart';
import '../features/chats/screens/chat_screen.dart';
import '../features/chats/widgets/customer_user_info.dart';

class UserChatWidget extends StatelessWidget {
  final String userName;
  final Widget subTitle;
  final CustomerUserInfo customerUserInfo;
  final CustomerUserInfo customerUserChatInfo;
  const UserChatWidget({
    Key? key,
    required this.userName,
    required this.subTitle,
    required this.customerUserInfo,
    required this.customerUserChatInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Expanded(child: customerUserInfo),
          ElevatedButton(
            style: ThemeHelper().buttonStyle(40.0, 10.0),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ChatScreen(
                  customerUserChatInfo: customerUserChatInfo,
                ),
              ),
            ),
            child: Text(
              'Chats',
              style: GoogleFonts.jost(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
