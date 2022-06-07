import 'package:flutter/material.dart';

import '../screens/home_screen/feed/chat_screen.dart';

class ChatIcon extends StatelessWidget {
  final bool isActive;
  const ChatIcon({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Chats',
          style: TextStyle(
            color: isActive ? Colors.green : Colors.grey,
            fontFamily: 'Jost',
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 5.0),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 20.0,
              )
            ],
          ),
          child: Image.asset(
            'assets/images/chat_icon.png',
            color: isActive ? Colors.green : Colors.grey,
            height: 51.99,
            width: 55,
          ),
        )
      ],
    );
  }
}
