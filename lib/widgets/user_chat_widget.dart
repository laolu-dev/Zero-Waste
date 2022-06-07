import 'package:flutter/material.dart';
import 'package:zero_waste/config/appTheme.dart';
import 'package:zero_waste/screens/chat_screen.dart';
import 'package:zero_waste/widgets/customer_user_info.dart';

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
    return Row(
      children: [
        Expanded(child: customerUserInfo),
        ElevatedButton(
          style: ThemeHelper().buttonStyle(40.0, 30.0),
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ChatScreen(
                    customerUserChatInfo: customerUserChatInfo,
                  ))),
          child: const Text(
            'Chats',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
